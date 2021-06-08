#!yaml|gpg

package: strongswan

connections:
- name: digitalocean-to-newberg
  secret: |
    -----BEGIN PGP MESSAGE-----

    hQGMA0ij3A9llVt0AQv/U3BHc8jpBWmhYVBW2/1xME50jbc2jmxM7ZiLWC47WJG4
    lhS+FSXjmDu3XTuxyBo9sH5QXY1DGhQyMD4xOviIn0CGQYb9X0roL+oMm1qkAvR4
    B1VtfwoAVjskZbgFjhK5mKbxYfv2cVt8NA5z5TCFi7EsI3/WV01Ho5ja4a2P5t7r
    eExjif2oAsMwfrQPpLw6gNQaBQT8Z6vhsRvSkfNt3JNY1chNa3w9xVsSrIcO7e0G
    Sm/5U6aoRL916JdQeKcDCUcNSaW+krdqhvGXEni0AypSn48vdi7QpECy/l6lyV1z
    393E4PlcrMxso2H/+Uza8/Odte991g662J/u2DPUBc2fbnsSlfvPhEzKzzxj6ybU
    M+s9sjRYZyj6/4EZGlgpF8W9YIG5KQfF7re88njMeVYjb+HiGOHIWxL/MQuR+ERq
    9fZvmYC5ojDUrC2yJl3wGzDhSh2yB6cq8Pq1VKiG2z6e6xFXuB9kNiuXLxSfGk6P
    PznIVa76LJijAPUCAlno0k8BsEFWGn41HFVPXvvp1h39M8sOpWkwwn+qEWASN1/F
    4f3HyV0Ky9oi1Ak0tIaBemUPpHhc6599aN20JnwBpf7TJZ+rY1E0Gw0GXkpHnDuV
    =pnEa
    -----END PGP MESSAGE-----
  config:
    authby: secret
    auto: start
    type: tunnel

    # IP address of the DigitalOcean droplet
    left: |
      -----BEGIN PGP MESSAGE-----

      hQGMA0ij3A9llVt0AQv/b0kh2IYOckeWGVDIn34Vwaj+rZHziU9Ba5Q18UCF7Q+O
      OgNXkdZOaolBg9GrZQUh0r8BYg8TvGOo7Lz9kohouoFIf9XQ+jJbTELdVt3Xv9Mq
      MyZNOODHCA3Cji4/yk74PlgsDgCyUasuiDTRVV4bnzjGD2J9/7ccOMqyieMrcOau
      xFFyu1OzYNTXIHhX+8nXcwm0pH/ILzgmeeHjk9Y6qtsL5sYcUrTMVeSl0ZOZq+rZ
      NzOF8GKe7bBMjyPwrVwcJu2tPAhDOo4XoMUwnChMTyMvYspFa8IYXY0OJ3xAF2p6
      yWzuobqoULalAM9+cBAKZCWiLAu2tcr75CQ0/G6j4YQQCur/DVXKnLvICQhfXHu7
      vy68uGrwmddpQytV+Za4obZw5weoj7Aw2Kz/WCL+oDKGU91mpocOuRMel7Jl1rML
      zZiCDiohCz2isskELttR2LgZL6YAc+Q/18A/ricejifxGfbuOPtkxcnp2fejePeN
      h1vwiE07VUutvE525Wdq0kYB9RuuDSVTmeOKYiQ6bA9AUvF06/oHgHUmRQIAfOhD
      7uoNw3/es12uCGsBB8RDf2U8jvvXTMcA/zxfiakcENPUVfI4EP7n
      =skNH
      -----END PGP MESSAGE-----
    leftsubnet: 10.0.0.0/8

    # IP address of the Newberg apartment
    right: |
      -----BEGIN PGP MESSAGE-----

      hQGMA0ij3A9llVt0AQv/de1e6C9DOqlvEDTJmXlJkfJqW9eDidtxYCntl1E6io03
      YtNOgQYrhf/zkooMqpob0XpEO+RzukEUlzObjn0SsCpxcNHsBJGM0sTc+PpRQE/6
      vcwQoZgCUQ4zz40CARg9rPcmnrGOJWeVvwCKHCZ016l2J7iNcg2epYmlUp5IlnnY
      lxJJu0GGjEfnsC0ea4y4gLg+hbVHZLNDD0OJ9tjAwbw7y/n6l3B4kXfK+dQy0YrE
      li/6SsV7ngk+bUna2K+D/mOIv5OMcJ8TZXArIQqcJD9L0rmVY+cqa2g8qYejNTws
      pCi5Nsh6GZ143rYCe5bw6sJeq9Q9VKEeAGsgW+5LdGgElnF2EwhO2CRj8m22q8TP
      +VFYeCP5KLNKPOcHHCkw9+HZajSiIJBRQBCBLzy1O9hWoNRTi3ymA9OivZgGdEev
      dtTC432zkPd1mE4UXOC2si7s5hVLAdDzWhWxG0zKq9/RLK+H9399oKz7wiIWDdOt
      AYkRsfYNDInk9gr092Vn0kYBO9ZKwHEdYHedOuOeMhyoncnUh9cHjo+kIEUcLKgE
      Wnl8vB+yXoucrq8l75OxmxdcP9UN12bVZPlXomHiq1WUpSE+rwaI
      =+kz9
      -----END PGP MESSAGE-----
    rightsubnet: 192.168.1.0/24

    ike: aes256-sha1-modp2048
    keyexchange: ikev2
    ikelifetime: 28800s
    esp: aes256-sha1-modp2048
