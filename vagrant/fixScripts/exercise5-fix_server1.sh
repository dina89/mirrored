#!/bin/bash
#add fix to exercise5-server1 here
echo "AllowAgentForwarding yes" | sudo tee -a /etc/ssh/sshd_config 

mkdir -p ~/.ssh

cat << EOF > ~/.ssh/config

Host *

    StrictHostKeyChecking no

    ForwardAgent yes

EOF

cat << EOF > ~/.ssh/id_rsa

-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEA3Gaman0rlv+VC4+3DJwyL6rd54GyolaRloiLjGeoI7Pm7zbe
+JGw5CY/nrj0Ti5a47V6rCNvmUpRFj/6Jb/CU2aMOrkMDCNmDovG13c39kWZ33pS
rEP/tPPoCNvibFJ5zJmfy2AkPzqxFFSPxEiEggNYqCmbVVBCww7yIayu5XEYq4sp
9NUthtCTqnGNXRCEK4I+mL9arvaZcwJyRw1rXoM7Lh2DvB5O1a4JrGFGiPzPWl5+
mc5HjCImepaga9Mchj+2wpHm7yjSo8lH52gB1nHP//cnzezARB8QtGvywmkMlhGp
37O61IYpze2nrbsXJb/9XpqCy+WEAO7szLiXxQIDAQABAoIBAGdQkxf9/u30duiJ
gNQfcAMaRJUeHh+tFugKr+esO4wo68sc3J6GpPX92/rKVnNDlYWCb7O7lLe1t5cH
fHovjqdLvdZVIgmaml+dNCOSliASdlPk4lYwNfCcGRv1/wiqDMBVDyvlsHgXSiTu
ksn++GZ9rRR/FHqEehc3rVcNvJp+b2MdYt9B/RYZUgW1CmXYWtWYf9WyH1m+ukE4
kziQq9COM9jPOE82dVzkOLH1Pgl/ZCum/lAQPOw5gE+1oYpGAzo+AQJk6WUjjSYM
GhcVR+QkFpWY04KKQIt6KYNvo6kFHs4/myD7xZYZdczGC3ph4JUYGA7FWXAzrjor
THYgFS0CgYEA/L4bctByPLBJ2RNsvgM5jytFdxH4KqDQ8zx7g0At7/MwAZwJua4X
321kfshufgAMKXaxVLgKWCg7sw4fbRjwRB4YT41mkGBl9oO8bylW8j8Roy2wT2oO
7i2HncG+MrWwC0Ahhl7eio7jZBQRxFXagzV9/d85CGKSte23+GDyBpcCgYEA3z3V
7cj1EQUBNQtF1x5JDDNZghoj6uq9PozVgsM1nAZNoUrJkvP2FLc61o+8Jt4Kwhzy
vJOfJQ9EHky5uKMLqjKpfQ285txiU8hxTxQnBMvmLmyI81gxoCRioDVKvGcUdCVC
3b4F9QzN0D+sK7zDPuzCt7N3pHJ2ve1FFRdmHAMCgYEAyXKNVjomk5C/i7Ib3meb
nS2UNI+yCegcI4N1vuuMsdBX1zCT39ePV5pNm3AOAYfwKaxdM3VtaU7IJrN/AOn7
t491ORMvSKxNGOtvafq9PmBeon1sJiAWvmizy139R1Xhd1YqYnuDTVUOkVodvyve
+u3L+mnNf41x+mf7VpGO1wkCgYEAxqTzU19aEgbuCBE72CtuvJiEsSwpgcPXGW2g
H3csoOVK9pbhvw2ujshsZrgHqF40HH490GdbWVK4Pm3vZMhQfOYPwuMSkCrSo9Lc
YI2CGtaEwBJ72m1D20gFKqHBGtxuatstILsR+femvAOsZE7XPYrXyTa842unFWGn
8xibF5kCgYEAk2E3sJ2ySP8YvEM23TAFZfMR/lCs3hhecz8wod1Hyi5PSfjwJ9yi
u1IBG+9CLDwgwXXoTT/TlDI8qpnQMMltFCITHXQ3Kxn+STz5YjbCf8ofXpRU19gV
Y6VTiMnvNZX15wvOOdOa/oG3leRdkAO3akitqmb3TbEkhNmexDpjmfM=
-----END RSA PRIVATE KEY-----
EOF

cat << EOF > ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcZqZqfSuW/5ULj7cMnDIvqt3ngbKiVpGWiIuMZ6gjs+bvNt74kbDkJj+euPROLlrjtXqsI2+ZSlEWP/olv8JTZow6uQwMI2YOi8bXdzf2RZnfelKsQ/+08+gI2+JsUnnMmZ/LYCQ/OrEUVI/ESISCA1ioKZtVUELDDvIhrK7lcRiriyn01S2G0JOqcY1dEIQrgj6Yv1qu9plzAnJHDWtegzsuHYO8Hk7VrgmsYUaI/M9aXn6ZzkeMIiZ6lqBr0xyGP7bCkebvKNKjyUfnaAHWcc//9yfN7MBEHxC0a/LCaQyWEanfs7rUhinN7aetuxclv/1emoLL5YQA7uzMuJfF vagrant@server2
EOF


chown vagrant:vagrant ~/.ssh/id_rsa
chown vagrant:vagrant ~/.ssh/config
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/authorized_keys