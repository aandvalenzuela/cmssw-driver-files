FROM almalinux:8
LABEL maintainer="CMS Build"
LABEL name="CMS Worker Node on EL"

RUN dnf install -y cpio
RUN dnf install -y rpm-build
RUN dnf install -y git
RUN dnf install -y python36 nspr nss rsync

RUN dnf install -y bash tcsh wget
RUN dnf install -y glibc libxcrypt openssl-libs libcom_err krb5-libs ncurses-libs perl perl-libs libX11 readline tcl tk mesa-libGLU libglvnd-glx libglvnd-opengl libXext libXft libXpm

RUN dnf install -y glibc-devel libxcrypt-devel openssl-devel libcom_err-devel krb5-devel ncurses-devel perl-devel libX11-devel readline-devel tcl-devel tk-devel mesa-libGLU-devel libglvnd-devel libXext-devel libXft-devel libXpm-devel

RUN dnf install -y nspr-devel

RUN dnf install -y perl-Carp perl-PathTools perl-Data-Dumper perl-Errno perl-Exporter perl-File-Path perl-File-Temp perl-Getopt-Long perl-IO perl-Text-ParseWords perl-constant perl-Digest-MD5
RUN dnf install -y libdrm perl-File-Which perl-Scalar-List-Utils perl-Term-ANSIColor perl-CGI perl-DBI perl-Encode perl-Memoize perl-Storable perl-Time-HiRes perl-Time-Local perl-YAML
RUN dnf install -y perl-IO-Compress

RUN dnf install -y java-devel
RUN dnf install -y libtool-ltdl-devel libtool
RUN dnf install -y lhapdf-devel

RUN useradd cmsbuild
USER cmsbuild
