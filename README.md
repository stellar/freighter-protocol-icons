# freighter-protocol-icons
Maintains a list of icon images for supported protocols on Freighter

## Image requirements

When adding a new protocol, include both an icon and a background image that meet the following specs.

### Icons (`icons/`)

- **Format:** PNG
- **Dimensions:** 96 × 96 px (square)
- **File size:** under 20 KB

### Backgrounds (`backgrounds/`)

- **Format:** PNG or JPEG. Prefer JPEG for photographic or gradient-heavy artwork, where lossless PNG can be several times larger for no visible gain. Use PNG for flat art, sharp edges, or text, which JPEG blurs.
- **Dimensions:** 16:9, at least 1152 × 648 px
- **File size:** under 500 KB

Backgrounds are always composited full-bleed behind a gradient overlay, so they never need transparency — an alpha channel is not required.

Use the protocol's name as the filename in lowercase kebab-case (e.g. `soroswap`, `soroban-domains`) and keep the base name identical between the `icons/` and `backgrounds/` directories. The extensions may differ (e.g. `icons/rozo.png` and `backgrounds/rozo.jpg`); consumers read the full URL from the backend's protocol config rather than assuming an extension.
