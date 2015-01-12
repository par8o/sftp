# sftp-cookbook

Installs & Configures SFTP and chroot'd SFTP users.

## Supported Platforms

Ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sftp']['sftp_group_id']</tt></td>
    <td>String</td>
    <td>SFTP Chroot Group ID</td>
    <td><tt>2012</tt></td>
  </tr>
</table>

## Usage

### sftp::default

Include `sftp` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[sftp::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## Author

Author:: Greg Albrecht (<gba@onbeep.com>)

## Contributors

* Jacobo García López de Araujo https://github.com/therobot
* Anthony Scalisi https://github.com/scalp42

## Copyright

Copyright 2014 OnBeep, Inc.

## License

Apache License, Version 2.0

## Source

https://github.com/OnBeep/cookbook-sftp
