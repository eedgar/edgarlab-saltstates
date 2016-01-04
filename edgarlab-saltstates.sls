git:
  pkg.installed

github.com:
  ssh_known_hosts:
    - present
    - user: root
    - fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48

edgarlab-saltstates:
  git.latest:
    - name: https://github.com/eedgar/edgarlab-saltstates.git
    - target: /srv/salt
    - require:
      - pkg: git
      - ssh_known_hosts: github.com

