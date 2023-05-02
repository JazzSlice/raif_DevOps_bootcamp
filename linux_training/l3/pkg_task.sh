dnf update
dnf list --installed | grep 'nginx'
dnf module list nginx
dnf module enable 'nginx:1.22'
dnf update nginx
