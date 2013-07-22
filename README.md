# Openssh [![Build Status](https://travis-ci.org/sipf-infrastructure/openssh.png?branch=master)](https://travis-ci.org/sipf-infrastructure/openssh)

## Installation du module

Dans le répertoire '/etc/puppet/modules', lancez les commandes suivantes :
```bash
$ mkdir openssh
$ cd openssh
$ git clone https://github.com/sipf-infrastructure/openssh.git .
```

## Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```ruby
node default {
  class { 'openssh': }
}
```
Il faut penser à modifier le fichier **issue.net** qui se trouve dans le répertoire 'files' du module.

