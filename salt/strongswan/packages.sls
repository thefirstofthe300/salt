Install strongswan package:
  pkg.installed:
    - pkgs:
      - {{ pillar['package'] }}

Ensure strongswan packages are up to date:
  pkg.uptodate:
    - refresh: True
    - pkgs:
      - {{ pillar['package'] }}
