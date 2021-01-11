# WARNING: This role is no longer used.

# Description

This role configures an [Icinga2](https://icinga.com/products/icinga-2/) which is a monitoring tool which is used to manage canaries for Status websites as well as `statusd` nodes.

# Usage

The UI can be accessed via GitHub OAuth at:
https://canary.infra.status.im/

For more details read:
https://icinga.com/docs/icinga2/latest/

# Details

The `statusd` canary comes from the `status-go` repository:
https://github.com/status-im/status-go/tree/develop/cmd/node-canary

# Known Issues

* UI can fail to auto-login when permissions on some files are wrong
  - Usually it's wrong permissions on `/docker/icinga/etc/icingaweb2/authentication.ini`
  - Or you might have to adjust ownership for whole `/docker/icinga/etc/icingaweb2`
