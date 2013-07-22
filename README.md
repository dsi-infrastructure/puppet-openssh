# Openssh [![Build Status](https://travis-ci.org/sipf-infrastructure/openssh.png?branch=master)](https://travis-ci.org/sipf-infrastructure/openssh)

## Installation du module

Dans le répertoire '/etc/puppet/modules', lancez les commandes suivantes :

```
$ mkdir openssh
$ cd openssh
$ git clone https://github.com/sipf-infrastructure/openssh.git .

```

## Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```
node default {
  class { 'openssh': }
}
```

