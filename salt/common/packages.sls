Install common packages:
  pkg.installed:
    - pkgs:
      - {{ pillar['editor'] }}
      - {{ pillar['shell'] }}

Ensure common packages are up to date:
  pkg.uptodate:
    - refresh: True
    - pkgs:
      - {{ pillar['editor'] }}
      - {{ pillar['shell'] }}
