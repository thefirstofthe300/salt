Write ipsec.conf file:
  file.managed:
    - name: /etc/ipsec.conf
    - template: jinja
    - source: salt://strongswan/configs/ipsec.conf

Write ipsec.secrets file:
  file.managed:
    - name: /etc/ipsec.secrets
    - template: jinja
    - source: salt://strongswan/configs/ipsec.secrets
