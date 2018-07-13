user_duy_pham:
 user.present:
  - fullname: Duy Pham
  - name: duy.pham
  - uid: 10001
  - home: /home/duy.pham
  - shell: /bin/bash

sshkey_duy_pham:
 ssh_auth.present:
  - name: duy.pham
  - user: duy.pham
  - source: salt://users/keys/duy_pham.pub
