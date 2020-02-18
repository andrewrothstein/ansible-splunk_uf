andrewrothstein.splunk_uf
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-splunk_uf.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-splunk_uf)

Installs the splunk universal forwarder.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.splunk_uf
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
