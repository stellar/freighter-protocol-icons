# freighter-protocol-icons
Maintains a list of icon images for supported protocols on Freighter

## Image requirements

When adding a new protocol, include both an icon and a background image that meet the following specs.

### Icons (`icons/`)

- **Format:** PNG
- **Dimensions:** 96 × 96 px (square)
- **File size:** under 20 KB

### Backgrounds (`backgrounds/`)

- **Format:** PNG
- **Dimensions:** 1152 × 648 px (16:9)
- **File size:** under 500 KB

Use the protocol's name as the filename in lowercase kebab-case (e.g. `soroswap.png`, `soroban-domains.png`) and keep it identical between the `icons/` and `backgrounds/` directories.
