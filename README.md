# cookbook-openstack-mellanox-cookbook

This cookbook is a translation of the puppet mellanox openstack module.

## Supported Platforms

OpenPOWER

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cookbook-openstack-mellanox']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### cookbook-openstack-mellanox::default

Include `cookbook-openstack-mellanox` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[cookbook-openstack-mellanox::default]"
  ]
}
```

## License and Authors 

Author:: Oregon State University (<chef@osuosl.org>)
