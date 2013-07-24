Name:           perl-Log-Log4perl-Appender-Lim-CLI-Server
Version:        0.13
Release:        1%{?dist}
Summary:        Log::Log4perl::Appender::Lim::CLI - A Log4perl appender for Lim CLI

Group:          Development/Libraries
License:        GPL+ or Artistic
URL:            https://github.com/jelu/log-log4perl-appender-lim-cli/
Source0:        log-log4perl-appender-lim-cli-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

BuildArch:      noarch
BuildRequires:  perl(ExtUtils::MakeMaker)
BuildRequires:  perl(Test::Simple)
BuildRequires:  perl(Log::Log4perl)

Requires:  perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
This module is used for getting Log::Log4perl output to the Lim::CLI module.


%prep
%setup -q -n log-log4perl-appender-lim-cli


%build
%{__perl} Makefile.PL INSTALLDIRS=vendor
make %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT
make pure_install PERL_INSTALL_ROOT=$RPM_BUILD_ROOT
find $RPM_BUILD_ROOT -type f -name .packlist -exec rm -f {} ';'


%check
make test


%clean
rm -rf $RPM_BUILD_ROOT


%files
%defattr(-,root,root,-)
%doc Changes README
%{perl_vendorlib}/Log*
%{_mandir}/man3/*.3*


%changelog
* Sun Aug 19 2012 Jerry Lundström < lundstrom.jerry at gmail.com > - 0.13-1
- New upstream release.

* Tue Aug 07 2012 Jerry Lundström < lundstrom.jerry at gmail.com > - 0.12-1
- Initial package for Fedora

