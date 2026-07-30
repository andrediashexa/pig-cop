# Lista de controladores C2 de botnets para blackhole via BGP (PIG-COP).
# Exportado de /ip firewall address-list do RouterOS.
/ip firewall address-list
add address=1.116.73.99 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=1.15.116.27 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=1.92.115.217 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=1.94.52.128 comment="block-attack-XMRig Monero Cryptominer" list=\
    BLOCK-BGP
add address=100.28.249.22 comment=block-attack-GoPhish list=BLOCK-BGP
add address=100.48.41.98 comment=block-attack-GoPhish list=BLOCK-BGP
add address=100.53.13.160 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=100.54.106.66 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=100.54.32.98 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=101.126.33.186 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=101.132.173.62 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=101.132.180.178 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=101.133.172.90 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=101.200.193.211 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=101.200.90.191 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=101.201.174.160 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=101.201.45.200 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=101.32.108.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.32.109.233 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.32.116.164 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.32.239.220 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.32.241.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.32.243.51 comment=block-attack-GoPhish list=BLOCK-BGP
add address=101.33.199.146 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=101.36.113.58 comment=block-attack-GoPhish list=BLOCK-BGP
add address=101.37.76.223 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=101.42.49.202 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=101.46.138.215 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.46.142.146 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.46.37.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.46.37.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.46.38.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.46.39.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.46.40.132 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.46.41.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.139.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.40.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.40.210 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.40.224 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.40.235 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.40.236 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.41.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.41.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.43.208 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.43.223 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.43.237 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.43.52 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.43.64 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=101.47.43.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=102.117.160.67 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=102.117.166.209 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=102.117.170.244 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=103.106.228.129 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=103.108.41.90 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.108.41.91 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.110.185.155 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=103.12.148.42 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=103.125.88.117 comment=block-attack-GoPhish list=BLOCK-BGP
add address=103.136.150.48 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=103.143.230.17 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=103.144.246.165 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=103.147.22.155 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=103.148.110.43 comment=block-attack-GoPhish list=BLOCK-BGP
add address=103.152.3.230 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.153.61.202 comment=block-attack-GoPhish list=BLOCK-BGP
add address=103.166.183.89 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=103.169.3.162 comment=block-attack-GoPhish list=BLOCK-BGP
add address=103.176.144.102 comment=block-attack-GoPhish list=BLOCK-BGP
add address=103.177.46.126 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.177.47.113 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.177.47.117 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.177.47.128 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.177.47.45 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.189.140.124 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=103.204.194.6 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.214.112.9 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=103.23.172.132 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=103.233.8.39 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=103.233.8.46 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=103.234.16.100 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.234.62.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=103.245.251.195 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=103.251.164.121 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=103.253.147.9 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.255.209.54 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=103.27.109.184 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=103.27.157.122 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=103.38.236.171 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=103.39.79.102 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=103.43.130.54 comment=block-attack-GoPhish list=BLOCK-BGP
add address=103.43.18.10 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=103.44.90.109 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=103.53.171.25 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=103.69.128.98 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=103.69.194.63 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=103.77.210.79 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=103.8.28.174 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=103.8.28.31 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=103.8.28.79 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=103.97.177.120 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=103.97.178.243 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=104.131.46.55 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=104.168.133.116 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=104.199.171.122 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=104.207.157.24 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=104.219.232.178 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=104.225.233.102 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=104.234.25.18 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=104.234.25.215 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=104.237.240.112 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=104.238.153.249 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=104.243.41.110 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=104.243.41.180 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=104.243.43.148 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=104.245.145.186 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=104.248.105.64 comment=block-attack-GoPhish list=BLOCK-BGP
add address=104.248.139.111 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=104.248.163.130 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=104.248.229.157 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=104.36.229.171 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=104.47.145.108 comment=block-attack-GoPhish list=BLOCK-BGP
add address=106.12.174.164 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=106.12.219.245 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=106.13.29.104 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=106.14.31.36 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=106.14.76.222 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=106.38.201.95 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=106.52.115.119 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=106.52.128.236 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=106.52.208.143 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=106.53.160.33 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=106.53.75.203 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=106.75.162.108 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=106.75.215.96 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=106.75.224.31 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=107.148.47.56 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=107.150.1.174 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=107.150.100.144 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.105.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.105.145 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.105.149 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.106.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.106.91 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.110.140 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.111.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.111.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.111.252 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.111.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.111.59 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.97.150 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.97.230 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.97.250 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.97.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.99.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.99.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.150.99.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=107.161.92.35 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=107.172.217.220 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=107.172.31.101 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=107.172.31.102 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=107.172.75.201 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=107.172.78.171 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=107.173.122.193 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=107.173.154.73 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=107.173.171.123 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=107.173.3.9 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=107.173.50.53 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=107.174.115.101 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=107.174.142.140 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=107.174.202.123 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=107.174.231.200 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=107.174.26.40 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=107.174.85.153 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=107.175.185.73 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=107.175.189.195 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=107.175.24.23 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=107.189.27.83 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=107.189.28.92 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=108.131.63.84 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=108.136.248.6 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=108.136.43.141 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=108.137.101.227 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=108.137.75.111 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=108.161.129.8 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=108.165.173.53 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=108.61.81.4 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=109.100.140.46 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=109.128.152.65 comment=block-attack-GoPhish list=BLOCK-BGP
add address=109.205.181.248 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=109.228.59.27 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=109.248.6.246 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=110.42.163.7 comment=block-attack-MobSF list=BLOCK-BGP
add address=111.228.4.54 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=111.228.55.96 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=111.229.4.108 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=111.6.85.226 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=111.91.0.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.0.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.0.169 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.1.240 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.2.174 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.2.69 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.2.72 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.2.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.2.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.3.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.3.130 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.3.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.3.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.3.55 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=111.91.3.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=112.124.47.226 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=112.244.101.73 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=112.74.96.168 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=112.95.159.90 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=113.44.133.1 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=113.44.39.1 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=113.44.66.184 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=113.44.67.52 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=113.44.91.210 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=113.45.177.191 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=113.45.238.149 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=113.45.75.45 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=113.98.238.83 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=114.132.251.233 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=114.55.100.176 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=114.55.141.18 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=114.66.58.11 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=115.186.205.127 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=115.190.140.220 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=115.190.160.206 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=115.190.161.178 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=115.190.233.79 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=115.190.250.28 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=115.190.35.210 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=115.190.53.184 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=115.190.54.238 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=115.191.18.57 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=115.29.231.140 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=116.198.233.179 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=116.202.208.163 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=116.203.31.207 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=116.205.143.204 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=116.254.103.206 comment=block-attack-GoPhish list=BLOCK-BGP
add address=116.62.142.146 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=116.62.226.163 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.190.245.135 comment=block-attack-GoPhish list=BLOCK-BGP
add address=117.193.142.213 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.205.84.145 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.209.21.103 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.209.85.68 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.209.90.21 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.241.186.3 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.242.196.149 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.248.27.146 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=117.25.28.1 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=117.72.102.110 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.119.63 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=117.72.175.125 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.178.246 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.181.104 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.191.140 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.214.50 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=117.72.217.36 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=117.72.220.129 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.242.9 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.38.14 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=117.72.62.2 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=117.72.68.211 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=117.72.79.68 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=118.107.0.254 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=118.107.47.84 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=118.107.47.86 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=118.122.8.155 comment="block-attack-NetBus Trojan" list=BLOCK-BGP
add address=118.178.135.73 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=118.193.77.108 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=118.193.77.124 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=118.25.147.157 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=118.25.193.164 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=118.89.73.78 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=119.28.105.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=119.28.108.54 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=119.28.111.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=119.28.114.192 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=119.28.114.247 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=119.29.143.243 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=119.29.165.74 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=119.29.249.227 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=119.29.73.94 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=119.29.8.235 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=119.45.127.240 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=119.91.54.176 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=120.136.24.164 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=120.224.45.209 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=120.237.147.54 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=120.24.64.74 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=120.25.168.8 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=120.48.168.57 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=120.53.124.202 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=120.76.200.78 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=120.77.203.166 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=120.77.211.144 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=120.79.255.238 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=120.79.8.122 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=120.79.88.89 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=121.153.7.211 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=121.169.59.210 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=121.199.165.107 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=121.199.28.80 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=121.224.7.169 comment=block-attack-GoPhish list=BLOCK-BGP
add address=121.4.92.72 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=121.40.126.60 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=121.40.18.128 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=121.40.37.253 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=121.43.121.40 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=121.43.182.95 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=121.43.238.183 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=121.43.58.124 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=122.155.223.144 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=122.225.124.110 comment="block-attack-Remcos RAT" list=BLOCK-BGP
add address=122.51.28.136 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=122.51.31.224 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=122.51.93.94 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=123.156.62.67 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=123.207.18.157 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=123.31.11.7 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=123.31.36.53 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=123.57.93.117 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=124.156.152.46 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=124.156.177.254 comment=block-attack-GoPhish list=BLOCK-BGP
add address=124.156.182.226 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=124.156.193.193 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=124.156.194.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=124.156.196.219 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=124.156.198.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=124.158.5.149 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=124.220.154.213 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=124.221.219.47 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=124.221.221.58 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=124.223.222.238 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=124.223.33.239 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=124.243.150.112 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=128.1.51.156 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=128.1.51.158 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=128.1.51.161 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=128.140.101.215 comment=block-attack-GoPhish list=BLOCK-BGP
add address=128.241.229.70 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=128.65.199.205 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=129.132.63.206 comment="block-attack-Gh0st RAT Trojan" list=\
    BLOCK-BGP
add address=129.150.34.168 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=129.151.135.50 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=129.151.224.192 comment=block-attack-GoPhish list=BLOCK-BGP
add address=129.151.252.237 comment=block-attack-GoPhish list=BLOCK-BGP
add address=129.204.11.247 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=129.204.161.142 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=129.212.168.86 comment=block-attack-GoPhish list=BLOCK-BGP
add address=129.212.183.99 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=129.213.166.220 comment=block-attack-GoPhish list=BLOCK-BGP
add address=129.226.154.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=129.226.154.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=129.226.188.105 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=129.226.193.190 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=129.226.211.168 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=129.226.217.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=129.226.83.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=129.226.83.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=129.226.84.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=13.114.149.36 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.125.199.40 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.126.45.69 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.134.119.231 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.134.135.83 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.134.56.60 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.134.82.179 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.135.105.151 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.135.112.155 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.135.178.120 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.135.205.132 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.135.220.153 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.135.234.171 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.135.52.52 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.135.64.167 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.158.165.149 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.159.101.255 comment="block-attack-Brute Ratel C4" list=\
    BLOCK-BGP
add address=13.192.234.4 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.193.104.134 comment="block-attack-Brute Ratel C4" list=\
    BLOCK-BGP
add address=13.201.2.133 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.201.51.154 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.201.54.75 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.201.64.100 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.208.176.158 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.208.209.101 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.208.253.111 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.208.42.58 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.212.10.3 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.212.104.87 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.212.117.191 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.217.231.30 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.218.35.211 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.230.129.228 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.232.232.181 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.232.24.101 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.232.80.81 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.233.130.168 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.233.148.100 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.233.173.59 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.233.207.111 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.233.94.211 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.234.18.168 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=13.234.34.61 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.239.253.193 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.244.104.229 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.244.151.87 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.244.99.168 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.245.111.65 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.245.89.16 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.246.194.179 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.246.37.159 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.246.44.199 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.247.119.248 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.247.149.247 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.247.182.137 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.247.67.247 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.247.99.87 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.250.125.90 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.250.49.126 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.251.198.28 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=13.37.104.112 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.40.184.42 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=13.40.9.159 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.41.132.40 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.41.96.167 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=13.42.240.144 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.42.240.41 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.43.238.206 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.43.29.157 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.43.81.150 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.43.94.7 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=13.50.5.38 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.52.16.209 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.56.105.127 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.56.232.93 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.56.240.56 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.57.116.96 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=13.57.237.222 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=13.58.42.201 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=13.59.52.71 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.60.200.48 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.63.154.54 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=13.93.233.43 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=130.12.182.101 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=130.61.124.23 comment="block-attack-Covenant C2" list=BLOCK-BGP
add address=131.186.57.140 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=132.226.202.33 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=134.122.140.185 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=134.122.152.210 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=134.122.55.34 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=134.199.133.26 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=134.199.166.195 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=134.199.209.67 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=134.199.229.117 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=134.209.171.89 comment=block-attack-GoPhish list=BLOCK-BGP
add address=134.209.223.203 comment=block-attack-GoPhish list=BLOCK-BGP
add address=134.209.30.4 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=134.209.93.110 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=135.181.151.113 comment=block-attack-GoPhish list=BLOCK-BGP
add address=135.235.8.201 comment=block-attack-GoPhish list=BLOCK-BGP
add address=136.116.1.188 comment=block-attack-GoPhish list=BLOCK-BGP
add address=136.144.165.159 comment=block-attack-GoPhish list=BLOCK-BGP
add address=136.228.40.23 comment=block-attack-GoPhish list=BLOCK-BGP
add address=136.24.173.249 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=136.243.103.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=137.184.0.179 comment=block-attack-GoPhish list=BLOCK-BGP
add address=137.184.122.10 comment=block-attack-GoPhish list=BLOCK-BGP
add address=137.184.188.89 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=137.184.57.89 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=137.184.87.69 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=137.184.93.131 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=138.124.15.54 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=138.197.143.1 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.197.145.94 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.197.156.131 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=138.197.168.34 comment=block-attack-GoPhish list=BLOCK-BGP
add address=138.197.18.115 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=138.197.194.52 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=138.197.224.55 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.199.217.30 comment=block-attack-GoPhish list=BLOCK-BGP
add address=138.2.136.23 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=138.201.198.73 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.201.80.194 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=138.226.237.106 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.226.247.177 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.68.170.98 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.68.180.119 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.68.254.126 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=138.68.47.225 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=138.91.32.183 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=139.144.176.85 comment=block-attack-GoPhish list=BLOCK-BGP
add address=139.159.185.176 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=139.162.180.208 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=139.162.185.94 comment=block-attack-GoPhish list=BLOCK-BGP
add address=139.196.223.82 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=139.196.41.201 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=139.199.72.163 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=139.224.16.185 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=139.224.198.190 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=139.224.37.91 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=139.59.138.247 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=139.59.181.253 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=139.59.44.192 comment=block-attack-GoPhish list=BLOCK-BGP
add address=139.59.44.30 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=139.59.93.252 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=139.59.99.99 comment=block-attack-GoPhish list=BLOCK-BGP
add address=14.103.150.186 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=14.103.175.50 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=14.22.78.20 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=14.225.1.88 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=140.143.194.253 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=141.148.208.171 comment=block-attack-GoPhish list=BLOCK-BGP
add address=141.164.62.120 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=141.195.112.192 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=141.227.188.226 comment=block-attack-GoPhish list=BLOCK-BGP
add address=142.11.194.134 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=142.132.248.147 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=142.171.116.94 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=142.93.166.139 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=142.93.199.234 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=142.93.86.246 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=143.110.151.209 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=143.110.163.176 comment=block-attack-GoPhish list=BLOCK-BGP
add address=143.110.245.184 comment=block-attack-GoPhish list=BLOCK-BGP
add address=143.198.1.58 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=143.198.136.6 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=143.198.16.180 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=143.198.208.174 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=143.244.186.168 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=143.92.43.153 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=143.92.43.231 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=143.92.43.246 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=143.92.51.45 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=143.92.60.13 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=143.92.60.24 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=143.92.60.26 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=144.124.229.131 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=144.124.234.94 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=144.124.242.84 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=144.126.130.139 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=144.172.102.223 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.172.102.72 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.172.105.248 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.172.106.173 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.172.107.97 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.172.116.13 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.172.117.82 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.172.95.146 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=144.202.121.189 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=144.22.192.165 comment=block-attack-GoPhish list=BLOCK-BGP
add address=144.22.207.61 comment=block-attack-GoPhish list=BLOCK-BGP
add address=144.31.106.169 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=144.31.169.60 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=144.34.179.37 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=144.79.12.69 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=144.91.64.114 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=144.91.86.133 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=145.131.30.136 comment=block-attack-GoPhish list=BLOCK-BGP
add address=145.131.8.169 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=146.103.114.54 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=146.103.121.226 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=146.103.124.7 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=146.185.159.140 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=146.190.11.128 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=146.190.153.31 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=146.190.159.168 comment=block-attack-GoPhish list=BLOCK-BGP
add address=146.190.161.65 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=146.190.17.255 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=146.190.242.127 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=146.190.50.229 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=146.59.199.61 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=146.70.158.198 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=147.124.219.2 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=147.182.143.122 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=147.182.156.86 comment=block-attack-GoPhish list=BLOCK-BGP
add address=147.182.234.229 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=147.182.251.99 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=147.45.42.161 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=147.50.230.91 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=147.50.231.86 comment="block-attack-NimPlant C2" list=BLOCK-BGP
add address=147.93.185.25 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=147.93.187.149 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=147.93.6.114 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=148.113.54.90 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=148.113.55.114 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=148.135.68.133 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=148.66.51.80 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=149.104.0.202 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=149.104.26.156 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=149.12.67.138 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=149.12.67.177 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=149.12.67.61 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=149.12.67.97 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=149.129.37.105 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=149.28.10.10 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=149.28.202.142 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=149.34.194.38 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=149.50.137.180 comment=block-attack-GoPhish list=BLOCK-BGP
add address=15.135.167.147 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.152.36.155 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.152.38.234 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.152.46.198 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.160.134.228 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.160.149.168 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.160.152.6 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=15.160.177.176 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.160.201.77 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.160.238.125 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.161.176.25 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=15.168.136.53 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.185.233.195 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.188.127.66 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.204.14.143 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=15.204.95.228 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=15.206.68.48 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=15.216.118.203 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.216.75.0 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=15.216.95.235 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.223.72.239 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.228.192.40 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.235.45.213 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=15.236.165.20 comment=block-attack-GoPhish list=BLOCK-BGP
add address=15.236.167.86 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=15.236.205.206 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=15.237.138.58 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.237.139.208 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.237.183.17 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.237.196.232 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.237.211.64 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.237.217.232 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.237.241.224 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=15.237.26.254 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=15.240.65.24 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=15.240.70.118 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=150.107.36.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.152 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.154 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.176 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.181 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.196 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.215 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.217 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.224 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.225 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.227 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.238 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.242 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.69 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.79 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.36.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.107.38.147 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=150.109.10.188 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.109.12.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.109.13.95 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.109.15.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.109.154.39 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=150.109.17.251 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.109.5.77 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=150.136.136.192 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=150.136.164.223 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=150.187.25.242 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=150.241.73.11 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=150.5.168.18 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=150.5.174.231 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=150.95.83.34 comment=block-attack-GoPhish list=BLOCK-BGP
add address=151.115.54.25 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=152.32.190.81 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=152.32.202.240 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=152.32.233.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.233.199 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.233.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.234.107 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.234.192 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.234.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.234.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.235.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.235.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.236.115 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.236.17 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.236.213 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.236.79 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.236.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.236.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=152.32.251.78 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=152.53.110.12 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=152.53.130.64 comment=block-attack-GoPhish list=BLOCK-BGP
add address=152.53.131.80 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=152.67.58.223 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=153.0.158.129 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=154.179.12.157 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=154.197.56.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.197.56.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.197.56.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.197.56.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.197.57.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.197.57.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.201.65.97 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=154.201.70.149 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=154.201.74.112 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=154.221.17.44 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=154.222.19.21 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=154.31.216.212 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=154.31.217.203 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=154.37.219.245 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=154.38.167.90 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=154.40.41.246 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=154.41.194.115 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=154.41.194.182 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=154.41.194.61 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=154.8.205.73 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=154.83.13.187 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=154.83.197.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.213 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.219 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.231 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.245 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.253 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.58 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.83.197.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=154.94.237.240 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=155.117.98.14 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=155.117.98.19 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=155.138.140.35 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=155.248.216.246 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=155.248.230.134 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=155.94.144.226 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=156.225.20.77 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=156.229.21.166 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.229.21.220 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.229.21.223 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.232.100.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.232.100.190 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.232.100.217 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.232.100.227 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.232.100.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.232.100.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=156.245.144.203 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=157.151.245.77 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=157.173.126.33 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=157.173.96.123 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=157.175.156.3 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=157.175.186.1 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=157.180.82.167 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=157.20.182.24 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=157.20.182.25 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=157.20.182.49 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=157.230.101.76 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=157.230.21.24 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=157.230.30.196 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=157.230.55.55 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=157.230.56.201 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=157.245.121.29 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=157.245.144.9 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=157.245.218.126 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=157.245.38.61 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=157.7.114.235 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=157.90.228.223 comment=block-attack-GoPhish list=BLOCK-BGP
add address=157.90.74.12 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=158.180.236.197 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=158.220.109.150 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=158.252.79.116 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=158.252.82.105 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=158.62.198.222 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=158.94.208.206 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=158.94.208.4 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=158.94.210.60 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=158.94.211.31 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.138.31.252 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=159.195.66.17 comment=block-attack-GoPhish list=BLOCK-BGP
add address=159.198.40.121 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=159.203.148.17 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.203.171.83 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=159.203.48.34 comment=block-attack-GoPhish list=BLOCK-BGP
add address=159.203.72.93 comment=block-attack-GoPhish list=BLOCK-BGP
add address=159.223.0.103 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.223.221.202 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.223.225.237 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=159.223.234.164 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.223.29.112 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=159.223.58.35 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.224.83.160 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=159.65.114.244 comment=block-attack-GoPhish list=BLOCK-BGP
add address=159.65.183.188 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.65.80.200 comment=block-attack-GoPhish list=BLOCK-BGP
add address=159.69.56.188 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=159.69.82.161 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=159.89.144.71 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=159.89.16.145 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=159.89.36.127 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=159.89.9.188 comment=block-attack-GoPhish list=BLOCK-BGP
add address=16.112.190.215 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.145.83.61 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.146.254.157 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=16.147.252.127 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.148.81.141 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.162.137.167 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=16.162.23.233 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.162.3.131 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.171.144.81 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=16.18.11.180 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.18.18.94 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.24.138.44 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.24.146.107 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.24.214.211 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.25.113.119 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.25.121.86 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.25.42.64 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.26.100.141 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.26.187.157 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.26.213.32 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.26.55.55 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.27.10.108 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.28.59.150 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.28.97.230 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.50.115.128 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.50.205.124 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.50.46.74 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.51.132.103 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.51.149.67 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.51.175.53 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.51.38.138 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.51.88.119 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.52.76.200 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.52.82.40 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.58.46.80 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=16.60.155.64 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=16.60.219.65 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=16.62.226.204 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.62.48.25 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.63.204.237 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.63.207.213 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.63.233.57 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.63.95.213 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.78.100.207 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=16.78.110.38 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.78.22.94 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.78.3.206 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=16.78.34.60 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.78.46.212 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.78.82.109 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.78.82.200 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.79.111.13 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.79.169.30 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=16.79.71.150 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=160.16.4.59 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=160.187.146.97 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=160.30.204.142 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=160.30.204.179 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=161.117.179.114 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=161.248.113.155 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=161.35.162.172 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=161.35.176.231 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=161.35.203.15 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=161.35.221.116 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=161.35.239.147 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=161.35.24.145 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=161.35.246.140 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=161.97.117.210 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=161.97.136.227 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=161.97.140.46 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=161.97.78.71 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=162.128.44.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.131 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.140 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.145 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.147 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.177 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.195 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.199 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.203 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.215 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.221 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.235 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.3 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.53 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.9 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.44.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.1 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.114 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.121 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.135 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.139 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.144 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.149 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.168 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.194 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.248 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.68.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.127 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.136 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.159 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.164 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.67 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.69.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.70.100 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.70.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.70.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.70.77 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.70.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.71.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.71.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.71.121 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.71.21 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.72.156 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.72.158 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.72.38 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.144 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.195 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.245 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.53 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.61 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.71 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.128.73.99 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.243.22.15 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=162.245.189.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.246.18.234 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.250.127.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.250.190.93 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=162.62.127.155 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.132.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.213.71 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.218.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.218.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.226.203 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.226.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.233.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.57.235 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=162.62.58.182 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=163.172.71.54 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=163.192.60.217 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=163.7.16.211 comment=block-attack-GoPhish list=BLOCK-BGP
add address=164.132.50.235 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=164.68.120.30 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=164.90.158.199 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=164.90.166.202 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=164.90.197.183 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=164.92.108.19 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=164.92.132.92 comment=block-attack-GoPhish list=BLOCK-BGP
add address=164.92.136.111 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=164.92.151.15 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=164.92.223.34 comment=block-attack-GoPhish list=BLOCK-BGP
add address=164.92.79.49 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=164.92.98.242 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=165.154.134.100 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.134.155 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.134.165 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.134.183 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.135.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.135.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.152 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.154 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.158 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.180 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.229 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.145.81 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.162.111 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.162.121 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.163.167 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.163.251 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.163.254 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.163.81 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.172.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.172.114 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.172.230 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.172.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.172.253 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.173.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.173.160 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.173.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.173.188 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.182.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.182.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.182.252 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.182.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.152 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.160 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.180 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.212 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.183.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.202.136 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.202.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.202.182 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.202.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.206.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.206.132 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.206.164 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.206.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.206.215 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.36.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.36.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.36.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.36.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.36.214 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.36.227 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=165.154.5.76 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=165.22.109.63 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.22.180.36 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.22.24.103 comment=block-attack-GoPhish list=BLOCK-BGP
add address=165.22.37.191 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=165.22.80.231 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.227.136.106 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=165.227.167.230 comment=block-attack-GoPhish list=BLOCK-BGP
add address=165.227.171.35 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.227.231.125 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.227.41.66 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=165.227.47.194 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.227.89.71 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=165.232.154.59 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.232.161.164 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.232.175.19 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=165.245.130.101 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=166.108.206.56 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=167.114.113.96 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=167.160.184.122 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=167.172.122.8 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=167.172.145.51 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=167.172.199.123 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.172.203.71 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=167.234.226.89 comment=block-attack-GoPhish list=BLOCK-BGP
add address=167.71.13.103 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.71.16.171 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.71.184.214 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.71.237.184 comment=block-attack-GoPhish list=BLOCK-BGP
add address=167.71.4.231 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=167.86.110.155 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=167.86.120.234 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.88.166.177 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.99.116.253 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=167.99.148.49 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.99.16.48 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=167.99.208.145 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=168.138.208.253 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=168.245.200.15 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.201.61 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.202.115 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.202.136 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.202.196 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.202.23 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.202.89 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.203.109 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.203.156 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.245.203.33 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=168.61.44.251 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=169.239.129.45 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=169.40.135.2 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=170.106.107.58 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.108.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.114.49 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.136.131 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.140.191 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.142.240 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=170.106.15.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.155.54 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.159.136 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.161.163 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.173.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.177.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.192.129 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.51.137 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.65.55 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.83.193 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.106.99.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.187.144.43 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=170.39.230.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=170.64.221.190 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=170.64.234.187 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=171.244.61.93 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=171.80.9.133 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=172.104.119.48 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=172.104.208.76 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=172.105.26.151 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=172.105.41.51 comment=block-attack-GoPhish list=BLOCK-BGP
add address=172.105.7.26 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=172.105.73.93 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=172.105.74.94 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=172.174.234.34 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=172.174.38.81 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.183.215.25 comment=block-attack-GoPhish list=BLOCK-BGP
add address=172.190.135.107 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.190.244.213 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=172.208.108.15 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=172.211.33.173 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.234.198.96 comment=block-attack-GoPhish list=BLOCK-BGP
add address=172.236.137.60 comment=block-attack-GoPhish list=BLOCK-BGP
add address=172.237.105.124 comment=block-attack-GoPhish list=BLOCK-BGP
add address=172.245.118.81 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=172.245.45.74 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.245.45.75 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.245.45.76 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.245.45.77 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.245.45.78 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=172.81.131.230 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=172.81.134.129 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=172.86.107.2 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=172.86.114.105 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=172.86.121.104 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=172.93.102.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=172.94.9.100 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=172.96.137.154 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=172.96.137.80 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=173.12.35.173 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=173.199.122.196 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=173.211.46.220 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=173.212.214.79 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=173.212.230.111 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=173.214.166.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=173.249.27.61 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=173.249.37.122 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=173.249.55.139 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=173.46.80.117 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=174.138.103.46 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=174.138.181.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=174.138.5.200 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=174.138.86.141 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=174.79.173.253 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=175.178.41.106 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=175.178.51.247 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=175.27.236.4 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=175.41.198.85 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=176.117.107.175 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=176.119.148.130 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=176.124.205.180 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=176.124.212.37 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=176.133.239.174 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=176.250.124.174 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=176.34.210.208 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=176.78.175.137 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=176.9.145.137 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=176.9.20.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=176.97.114.244 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=176.97.76.99 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=176.99.14.145 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=177.124.72.24 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=178.128.123.209 comment=block-attack-DcRAT list=BLOCK-BGP
add address=178.128.140.47 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=178.128.222.137 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=178.128.63.20 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=178.128.65.29 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=178.154.192.69 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=178.156.232.87 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=178.157.59.195 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=178.16.53.110 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=178.16.55.108 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=178.16.55.163 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=178.196.172.182 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=178.236.252.109 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=178.239.123.144 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=178.62.249.117 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=179.43.172.53 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=179.43.177.132 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=179.43.186.214 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=179.43.189.17 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=179.61.145.140 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=18.116.2.157 comment=block-attack-GoPhish list=BLOCK-BGP
add address=18.118.117.51 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=18.118.16.212 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.118.163.241 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.118.24.86 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.119.116.151 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=18.130.0.86 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.130.28.232 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.132.108.116 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.132.177.238 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=18.132.96.242 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.133.214.18 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.139.83.173 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=18.144.62.104 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.159.37.240 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.162.123.146 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.163.183.136 comment="block-attack-NimPlant C2" list=BLOCK-BGP
add address=18.163.194.1 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.167.134.106 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.167.42.162 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.171.186.75 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.171.254.215 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.175.146.51 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.175.38.62 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.180.199.50 comment="block-attack-Brute Ratel C4" list=\
    BLOCK-BGP
add address=18.183.173.16 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.184.215.243 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.184.43.116 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.185.63.200 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.189.113.48 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=18.191.233.1 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.192.100.176 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.192.8.246 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=18.194.49.47 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=18.195.227.45 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=18.199.141.124 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.201.14.211 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.201.48.152 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.216.133.250 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=18.220.193.242 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=18.222.184.181 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.226.150.242 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.226.222.122 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.228.24.75 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.228.6.105 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.230.148.174 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.230.22.25 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.230.60.53 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.231.124.135 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.231.226.204 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.231.54.111 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.233.73.116 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=18.236.192.145 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=18.236.86.123 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=18.60.111.42 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=18.61.65.220 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=180.76.141.175 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=180.76.144.175 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=181.174.165.127 comment=block-attack-GoPhish list=BLOCK-BGP
add address=181.174.165.128 comment=block-attack-GoPhish list=BLOCK-BGP
add address=181.214.100.216 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=181.214.100.88 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=182.147.212.49 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=182.147.214.19 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=182.23.67.109 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=182.255.44.44 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=182.255.45.244 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=182.255.45.50 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=182.92.159.22 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=182.92.166.73 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=183.78.152.175 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=184.168.22.239 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=184.185.107.7 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.10.68.122 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.112.144.66 comment=block-attack-GoPhish list=BLOCK-BGP
add address=185.132.53.18 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=185.139.69.5 comment=block-attack-GoPhish list=BLOCK-BGP
add address=185.141.216.76 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.156.73.148 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.156.73.99 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.157.81.210 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.165.169.222 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=185.165.171.21 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=185.167.234.235 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.167.60.126 comment=block-attack-GoPhish list=BLOCK-BGP
add address=185.194.175.132 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=185.194.205.48 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=185.195.65.195 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.207.64.69 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.208.156.59 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=185.208.159.162 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=185.209.42.105 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.232.170.43 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=185.233.164.224 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=185.241.7.49 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.246.117.81 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=185.254.57.136 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.254.57.209 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.254.57.214 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.254.58.17 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.254.59.251 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=185.49.165.41 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=185.67.144.27 comment=block-attack-GoPhish list=BLOCK-BGP
add address=185.81.166.43 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=185.91.127.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.116 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.44 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.68 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.90 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.91 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=185.91.127.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=186.156.92.198 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=186.17.213.66 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=187.84.150.111 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=187.84.150.127 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=188.119.148.125 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=188.137.177.201 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=188.153.77.173 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=188.208.197.80 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=188.214.128.130 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=188.225.43.74 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=188.40.151.67 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=189.150.83.128 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=190.119.16.140 comment=block-attack-GoPhish list=BLOCK-BGP
add address=191.37.134.80 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=191.93.118.254 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=192.140.163.165 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=192.140.176.79 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=192.175.22.188 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=192.206.117.228 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=192.227.140.120 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=192.227.239.42 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=192.227.249.141 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=192.248.184.13 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=192.3.14.149 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=192.3.177.149 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=192.3.187.89 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=192.3.233.166 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=192.3.233.34 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=192.52.166.48 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=192.81.216.107 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=192.96.159.221 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=193.109.193.149 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=193.134.211.58 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=193.141.60.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=193.141.60.3 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=193.141.60.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=193.141.60.72 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=193.141.60.73 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=193.180.213.255 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=193.221.200.219 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=193.25.217.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=193.25.217.67 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=193.26.115.218 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=193.29.13.89 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=193.29.56.122 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=193.42.246.38 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=193.42.25.65 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=193.5.65.119 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=194.12.8.26 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=194.147.34.171 comment=block-attack-GoPhish list=BLOCK-BGP
add address=194.163.191.78 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=194.164.123.21 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=194.180.36.111 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=194.233.90.144 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=194.26.141.203 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=194.26.192.214 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=194.67.196.238 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=194.69.162.205 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=194.87.161.238 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=195.100.198.220 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=195.154.167.36 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=195.154.203.12 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=195.177.94.132 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=195.178.110.163 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=195.20.17.103 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=195.201.139.229 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=195.226.92.128 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=195.66.215.248 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=196.191.244.137 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=196.202.83.95 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=197.243.95.70 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=198.12.65.237 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=198.13.47.54 comment=block-attack-GoPhish list=BLOCK-BGP
add address=198.144.179.122 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=198.199.73.41 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=198.211.103.111 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=198.23.173.170 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=198.23.196.130 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=198.46.143.75 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=198.46.147.169 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=198.55.109.156 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=198.58.253.222 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=198.71.58.220 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=198.96.93.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=198.98.51.203 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=199.101.108.196 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.108.92 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.109.105 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.100 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.104 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.123 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.141 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.145 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.147 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.170 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.173 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.182 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.216 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.233 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.71 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.82 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.95 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.101.111.98 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=199.188.104.129 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=199.188.104.130 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=199.188.109.7 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=199.241.1.213 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=199.241.1.214 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=199.241.1.215 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=2.34.147.3 comment="block-attack-Brute Ratel C4" list=BLOCK-BGP
add address=2.57.122.72 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=2.58.56.130 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=2.58.84.141 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=2.58.84.158 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=20.0.202.73 comment=block-attack-GoPhish list=BLOCK-BGP
add address=20.104.78.25 comment=block-attack-GoPhish list=BLOCK-BGP
add address=20.106.235.221 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=20.118.243.73 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=20.125.56.34 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=20.186.68.60 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=20.188.119.195 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=20.196.147.118 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=20.2.139.87 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=20.2.140.201 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=20.2.161.33 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=20.205.162.42 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=20.213.217.227 comment=block-attack-GoPhish list=BLOCK-BGP
add address=20.22.106.192 comment=block-attack-GoPhish list=BLOCK-BGP
add address=20.230.222.61 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=20.234.166.219 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=20.33.123.34 comment=block-attack-GoPhish list=BLOCK-BGP
add address=20.51.193.170 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=20.81.131.152 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=20.89.182.93 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=201.234.38.193 comment=block-attack-GoPhish list=BLOCK-BGP
add address=202.10.33.52 comment=block-attack-MobSF list=BLOCK-BGP
add address=202.10.34.120 comment=block-attack-GoPhish list=BLOCK-BGP
add address=202.112.238.106 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=202.125.94.123 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=202.146.218.74 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=202.151.177.221 comment=block-attack-GoPhish list=BLOCK-BGP
add address=202.154.57.243 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=202.182.100.156 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=202.56.160.189 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=202.56.160.190 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=202.61.137.217 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=202.61.139.130 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=202.61.139.28 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=203.121.62.7 comment=block-attack-GoPhish list=BLOCK-BGP
add address=203.159.90.198 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=204.76.203.41 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=205.209.105.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=205.209.110.210 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=205.209.117.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=205.209.119.146 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=206.189.1.112 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=206.189.116.120 comment=block-attack-GoPhish list=BLOCK-BGP
add address=206.189.189.202 comment=block-attack-GoPhish list=BLOCK-BGP
add address=206.189.19.79 comment=block-attack-GoPhish list=BLOCK-BGP
add address=206.189.227.148 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=206.217.143.19 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=206.237.127.70 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=207.148.68.118 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=207.154.204.90 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=207.174.105.100 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.105 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.107 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.119 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.38 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.43 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.46 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.49 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.174.105.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=207.244.249.244 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=207.246.93.127 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=207.99.79.35 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=208.123.119.166 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=208.72.84.151 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=208.78.46.51 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=208.85.17.127 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=208.85.23.90 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=208.87.131.165 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=209.10.188.204 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=209.145.59.89 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=209.159.150.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=209.195.169.238 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=209.25.143.17 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=209.250.139.53 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=209.38.217.129 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=209.59.184.78 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=209.97.174.85 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=210.56.48.32 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=211.159.149.97 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=211.159.227.142 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=211.178.112.151 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=212.103.26.10 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=212.11.64.115 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=212.14.244.222 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=212.192.15.196 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=212.193.3.188 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=212.193.31.202 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=212.34.136.14 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=212.64.195.38 comment=block-attack-GoPhish list=BLOCK-BGP
add address=212.86.116.106 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=213.109.162.38 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=213.136.80.73 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=213.150.194.33 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=213.150.194.34 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=213.155.23.252 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=213.161.176.93 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=213.175.61.34 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=213.176.16.120 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=213.179.32.9 comment="block-attack-Gh0st RAT Trojan" list=\
    BLOCK-BGP
add address=213.193.253.1 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=213.199.35.149 comment="block-attack-Brute Ratel C4" list=\
    BLOCK-BGP
add address=213.199.62.255 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=213.254.182.31 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=213.64.72.46 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=216.118.101.10 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.100 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.101 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.102 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.103 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.104 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.105 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.106 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.107 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.108 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.109 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.11 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.110 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.111 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.112 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.113 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.114 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.115 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.116 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.117 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.118 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.119 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.12 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.120 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.121 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.122 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.123 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.124 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.125 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.126 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.127 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.128 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.129 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.13 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.130 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.131 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.132 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.133 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.134 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.135 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.136 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.137 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.138 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.139 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.14 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.140 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.141 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.142 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.143 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.144 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.145 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.146 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.147 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.148 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.149 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.15 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.150 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.151 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.152 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.153 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.154 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.155 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.156 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.157 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.158 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.159 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.16 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.160 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.161 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.162 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.163 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.164 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.165 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.166 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.167 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.168 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.169 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.17 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.170 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.171 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.172 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.173 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.174 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.175 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.176 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.177 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.178 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.179 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.18 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.180 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.181 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.182 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.183 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.184 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.185 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.186 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.187 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.188 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.189 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.19 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.190 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.191 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.192 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.193 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.194 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.195 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.196 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.197 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.198 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.199 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.2 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.20 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.200 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.201 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.202 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.203 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.205 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.206 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.207 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.208 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.209 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.21 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.210 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.211 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.212 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.213 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.214 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.215 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.216 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.217 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.218 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.219 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.22 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.220 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.221 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.222 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.223 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.224 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.225 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.226 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.227 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.228 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.229 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.23 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.230 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.231 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.232 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.233 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.234 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.235 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.236 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.237 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.238 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.239 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.24 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.240 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.241 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.242 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.243 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.244 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.245 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.246 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.247 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.248 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.249 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.25 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.250 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.251 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.252 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.253 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.254 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.26 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.27 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.29 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.3 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.30 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.31 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.32 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.33 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.34 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.35 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.36 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.37 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.38 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.39 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.4 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.40 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.41 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.42 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.43 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.44 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.45 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.46 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.47 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.48 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.49 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.5 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.50 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.51 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.52 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.53 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.54 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.55 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.56 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.57 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.58 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.59 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.6 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.60 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.61 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.62 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.63 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.64 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.65 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.66 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.67 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.68 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.69 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.7 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.70 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.71 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.72 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.74 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.75 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.76 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.77 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.78 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.79 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.8 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.80 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.81 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.82 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.83 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.84 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.85 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.86 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.87 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.88 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.89 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.9 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.90 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.91 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.92 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.93 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.94 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.95 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.96 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.97 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.98 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.118.101.99 comment="block-attack-Viper C2" list=BLOCK-BGP
add address=216.126.227.219 comment="block-attack-Villain C2" list=BLOCK-BGP
add address=216.128.145.180 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=216.158.227.242 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=216.158.235.142 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=216.219.86.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=216.219.88.78 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=216.245.184.39 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=216.250.250.224 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=217.114.222.10 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=217.114.222.12 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=217.154.162.45 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=217.154.217.139 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=217.154.68.152 comment=block-attack-GoPhish list=BLOCK-BGP
add address=217.160.153.225 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=217.217.254.115 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=217.26.31.86 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=217.60.249.120 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=217.60.249.161 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=218.104.52.188 comment=block-attack-GoPhish list=BLOCK-BGP
add address=218.29.158.91 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=221.12.129.226 comment="block-attack-Remcos RAT" list=BLOCK-BGP
add address=221.132.29.137 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=221.163.91.163 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=221.214.111.106 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=222.112.24.168 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=222.118.241.116 comment=block-attack-GoPhish list=BLOCK-BGP
add address=222.190.108.207 comment="block-attack-Gh0st RAT Trojan" list=\
    BLOCK-BGP
add address=222.221.20.14 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=222.242.112.58 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=222.242.114.103 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=222.242.114.52 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=222.242.115.153 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=222.253.182.185 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=222.255.100.119 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=223.254.128.112 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=223.26.63.57 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=223.27.46.100 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=23.226.136.169 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=23.235.177.8 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=23.236.64.252 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=23.247.130.245 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=23.247.253.245 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=23.94.38.104 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=23.94.59.163 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=23.94.59.25 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=23.94.61.153 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=23.94.99.26 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=23.95.193.221 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=23.95.240.226 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=23.95.50.208 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=23.95.6.6 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=23.95.72.34 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=24.144.82.16 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=24.144.90.215 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=24.199.93.68 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=24.9.117.208 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=27.124.20.143 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=27.150.169.68 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=3.10.233.43 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.10.24.207 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.10.70.226 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.101.121.203 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.101.190.30 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.101.63.77 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.104.135.43 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.106.194.214 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.107.71.227 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.107.73.0 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.108.249.225 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.11.10.14 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.11.96.62 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.110.153.212 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=3.110.157.221 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.110.165.117 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.123.179.148 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.124.209.212 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.127.218.218 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.133.143.245 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.137.162.68 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.138.69.254 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.141.155.79 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=3.141.20.153 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=3.143.175.125 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.143.23.1 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.144.251.158 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.147.79.141 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.149.237.64 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.15.211.77 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.151.251.53 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.208.225.35 comment=block-attack-GoPhish list=BLOCK-BGP
add address=3.212.215.46 comment=block-attack-GoPhish list=BLOCK-BGP
add address=3.218.102.254 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.224.110.21 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.226.119.211 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=3.248.248.49 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.249.212.150 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.25.91.139 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.252.159.67 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.252.64.196 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.252.67.219 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.253.197.0 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.253.237.197 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.254.108.155 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.255.150.213 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=3.26.190.239 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.26.73.29 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.27.34.94 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.28.215.171 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.28.45.142 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.29.244.79 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.34.186.58 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.35.134.172 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.35.14.242 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.35.166.91 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.35.236.211 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.36.56.88 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.36.57.196 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.38.247.146 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.38.253.157 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=3.39.32.40 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.64.147.2 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.65.105.79 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.67.169.183 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.68.199.93 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.71.113.4 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.72.18.61 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.73.128.200 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.77.108.81 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=3.8.174.11 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.82.152.138 comment=block-attack-GoPhish list=BLOCK-BGP
add address=3.90.14.117 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.90.207.91 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.95.254.194 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.96.205.89 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=3.96.207.179 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=31.156.177.89 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=31.220.74.13 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=31.220.92.21 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=31.45.231.174 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=31.56.60.104 comment=block-attack-GoPhish list=BLOCK-BGP
add address=31.57.228.9 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=31.57.243.44 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=34.101.131.221 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.102.87.198 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.104.144.130 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.120.113.25 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.120.233.212 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.122.21.68 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.123.246.69 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.132.98.183 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.136.0.42 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=34.149.77.136 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.151.214.214 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=34.159.98.118 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.175.221.125 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.176.142.248 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.18.165.179 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.19.22.113 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=34.200.246.16 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.205.200.160 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=34.222.126.21 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=34.222.153.105 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=34.224.82.156 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=34.229.79.246 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=34.252.160.204 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.252.178.70 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.254.82.8 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.30.77.194 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.38.195.43 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.46.180.128 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.49.56.133 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=34.56.42.78 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=34.59.86.168 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.67.76.233 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.68.221.226 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=34.72.114.209 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=34.77.62.214 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.78.164.194 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.79.18.204 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.8.12.46 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.87.24.96 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=34.9.31.28 comment=block-attack-GoPhish list=BLOCK-BGP
add address=34.9.91.140 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.152.250.136 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.152.255.165 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.152.70.79 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.157.225.144 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.166.136.113 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.166.57.84 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=35.167.49.93 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.176.0.45 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.176.115.72 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.176.231.226 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.176.38.151 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.177.166.105 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.177.207.235 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.178.174.194 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.179.138.241 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.179.153.29 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.179.249.59 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.179.83.160 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.182.238.66 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.182.254.92 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=35.183.148.206 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.183.235.94 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.183.26.238 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.183.37.8 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.183.54.25 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.183.85.197 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.193.82.102 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=35.199.157.76 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=35.208.107.212 comment=block-attack-GoPhish list=BLOCK-BGP
add address=35.212.172.98 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.212.234.225 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=35.217.52.55 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=35.219.127.45 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=35.220.199.172 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.226.155.176 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=35.226.91.167 comment=block-attack-GoPhish list=BLOCK-BGP
add address=35.227.245.87 comment=block-attack-GoPhish list=BLOCK-BGP
add address=35.231.119.13 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=35.232.121.228 comment=block-attack-GoPhish list=BLOCK-BGP
add address=35.72.3.70 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.88.143.60 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.89.131.237 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.90.2.248 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=35.91.237.103 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=35.91.238.160 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=36.138.73.158 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=36.140.162.173 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=36.67.33.99 comment="block-attack-XMRig Monero Cryptominer" list=\
    BLOCK-BGP
add address=37.106.36.32 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=37.107.170.53 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=37.187.20.127 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=37.205.13.125 comment=block-attack-GoPhish list=BLOCK-BGP
add address=37.221.196.152 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=37.36.201.199 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=37.60.254.174 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=37.9.171.97 comment=block-attack-GoPhish list=BLOCK-BGP
add address=38.102.85.20 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=38.111.162.108 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=38.111.162.184 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=38.111.162.55 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=38.124.86.19 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=38.124.86.21 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=38.146.29.63 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=38.147.170.252 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=38.182.168.169 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=38.190.196.52 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=38.190.254.97 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=38.242.157.96 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=38.247.144.193 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=38.29.212.164 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=38.38.250.99 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=38.47.238.110 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=38.47.80.157 comment=block-attack-GoPhish list=BLOCK-BGP
add address=38.49.57.15 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=38.54.108.40 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=38.54.112.234 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=38.54.115.233 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=38.56.209.142 comment=block-attack-GoPhish list=BLOCK-BGP
add address=38.58.57.12 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=38.60.209.204 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=38.60.242.234 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=38.76.195.221 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=39.101.131.231 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=39.103.98.20 comment=block-attack-GoPhish list=BLOCK-BGP
add address=39.105.165.37 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=39.106.133.52 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=39.106.41.55 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=39.106.57.170 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=39.106.8.249 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=39.107.121.220 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=39.108.76.49 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=39.62.154.14 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=39.96.202.122 comment=block-attack-GoPhish list=BLOCK-BGP
add address=39.97.3.110 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=39.98.48.153 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=4.153.5.136 comment=block-attack-GoPhish list=BLOCK-BGP
add address=4.185.79.65 comment=block-attack-GoPhish list=BLOCK-BGP
add address=4.201.122.3 comment=block-attack-GoPhish list=BLOCK-BGP
add address=4.201.220.7 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=4.230.24.119 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=4.246.90.81 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=4.247.145.101 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=40.114.83.155 comment=block-attack-GoPhish list=BLOCK-BGP
add address=40.172.186.101 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=40.172.221.14 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=40.177.212.16 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=40.192.119.184 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=40.192.119.195 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=40.192.27.112 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=40.233.14.199 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=40.66.42.246 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=40.67.146.12 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=40.91.219.85 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=41.186.188.82 comment=block-attack-GoPhish list=BLOCK-BGP
add address=41.221.194.233 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=41.221.194.234 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=41.232.10.110 comment="block-attack-njRAT Trojan" list=BLOCK-BGP
add address=41.242.2.102 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=41.46.175.247 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=42.112.116.168 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=42.192.101.39 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=42.193.131.125 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=42.228.216.78 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=43.102.105.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.107 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.108 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.119 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.122 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.125 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.129 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.131 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.140 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.144 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.148 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.149 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.151 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.156 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.160 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.166 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.210 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.211 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.212 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.213 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.214 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.215 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.216 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.217 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.218 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.219 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.220 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.221 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.223 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.224 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.105.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.105 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.107 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.108 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.110 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.111 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.114 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.116 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.125 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.127 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.134 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.136 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.138 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.139 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.140 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.143 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.146 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.148 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.151 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.152 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.153 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.154 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.155 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.156 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.159 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.160 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.161 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.163 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.164 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.138.165 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.1 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.15 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.38 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.41 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.43 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.44 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.52 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.54 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.58 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.65 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.67 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.68 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.70 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.71 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.78 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.79 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.192.9 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.0 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.44 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.47 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.49 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.53 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.55 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.58 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.59 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.61 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.64 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.65 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.69 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.197.9 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.0 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.1 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.15 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.21 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.3 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.35 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.44 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.46 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.48 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.49 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.54 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.55 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.59 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.64 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.2.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.105 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.59 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.71 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.84 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.208.86 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.134 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.142 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.143 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.147 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.148 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.160 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.163 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.166 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.169 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.183 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.212 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.216 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.218 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.238 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.241 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.68 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.69 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.85 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.212.98 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.105 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.173 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.177 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.186 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.209 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.228 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.239 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.244 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.245 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.248 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.43 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.61 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.213.95 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.17 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.3 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.35 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.41 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.46 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.64 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.65 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.24.9 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.81 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.85 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.86 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.88 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.90 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.91 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.95 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.98 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.25.99 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.100 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.105 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.124 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.125 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.127 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.129 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.130 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.131 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.132 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.185 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.187 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.194 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.197 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.203 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.205 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.208 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.214 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.216 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.218 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.224 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.226 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.229 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.230 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.238 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.239 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.250 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.253 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.85 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.88 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.90 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.91 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.95 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.98 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.28.99 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.105 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.110 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.119 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.17 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.48 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.49 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.52 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.69 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.72 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.88 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.29.99 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.1 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.15 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.17 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.21 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.3 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.35 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.36 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.38 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.43 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.46 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.47 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.48 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.102.48.9 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.1.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.2.194 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.2.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.2.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.3.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.3.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.3.234 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.3.241 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.3.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.3.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.3.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.4.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.4.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.4.147 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.4.209 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.4.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.4.70 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.4.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.125 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.130 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.152 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.167 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.195 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.200 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.217 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.228 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.244 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.245 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.58 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.64 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.69 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.9 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.90 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.5.98 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.107 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.125 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.134 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.138 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.153 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.178 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.182 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.199 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.233 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.103.6.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.108.17.242 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=43.128.107.228 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=43.128.108.211 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.128.109.111 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.128.70.214 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.128.71.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.128.86.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.128.97.148 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=43.130.10.36 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.15.245 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.152.216 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.137 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.192 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.213 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.233 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.3 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.44 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.47 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.163.64 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.169.107 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.169.215 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.169.36 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.169.44 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.26.168 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.29.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.3.132 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.32.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.33.169 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.38.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.38.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.6.193 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.60.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.61.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.7.173 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.130.74.248 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.0.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.1.121 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.1.72 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.13.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.2.65 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.22.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.24.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.25.161 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.3.173 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.35.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.36.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.39.46 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.4.227 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.4.245 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.43.145 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.43.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.46.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.48.61 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.55.248 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.55.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.57.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.59.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.131.9.47 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.133.34.119 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.133.34.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.133.34.35 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.133.35.180 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.133.43.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.133.55.116 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.133.57.137 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.105.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.11.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.111.234 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.112.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.117.122 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.120.248 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.122.203 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.122.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.124.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.127.151 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.129.241 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.13.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.133.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.162.135 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.164.35 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=43.134.168.150 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.169.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.172.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.174.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.176.210 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.176.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.18.55 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.181.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.22.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.22.181 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.225.229 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.226.186 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.227.73 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.232.55 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.236.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.236.155 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.240.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.250.114 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.36.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.37.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.38.252 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.4.225 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.4.41 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.41.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.43.242 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.52.15 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.56.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.56.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.63.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.64.226 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.67.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.76.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.76.219 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.77.225 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.93.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.134.94.107 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.133.208 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.135.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.137.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.150.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.153.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.153.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.160.16 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.178.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.180.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.183.208 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.135.186.81 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.136.132.196 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=43.139.187.115 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=43.140.36.203 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=43.143.109.32 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=43.152.67.79 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.152.72.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.152.72.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.1.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.10.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.107.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.110.72 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.112.56 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.117.231 comment=block-attack-Hookbot list=BLOCK-BGP
add address=43.153.12.72 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.14.52 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.15.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.15.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.18.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.18.203 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.199.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.204.192 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.205.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.21.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.23.124 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.25.209 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.41.111 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.41.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.42.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.42.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.46.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.49.67 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.50.200 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.54.186 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.56.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.6.78 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=43.153.60.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.61.121 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.61.129 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.61.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.62.21 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.67.35 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.7.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.70.232 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.76.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.82.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.83.201 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.85.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.92.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.153.98.81 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.154.190.128 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=43.156.102.200 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=43.156.109.158 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.130.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.131.197 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.135.174 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.172.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.226.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.228.21 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.233.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.235.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.241.192 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.247.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.35.95 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.59.249 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.60.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.63.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.66.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.7.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.7.242 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.73.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.76.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.80.154 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.83.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.9.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.9.70 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.156.9.98 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.105.88 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.109.210 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.118.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.118.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.119.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.120.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.120.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.122.73 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.22.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.22.54 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.24.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.3.76 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.30.220 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.43.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.54.153 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.56.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.58.159 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.60.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.61.46 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.61.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.7.249 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.71.52 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.72.17 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.82.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.96.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.96.235 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.98.136 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.98.67 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.157.99.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.158.90.219 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.129.146 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.129.193 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.129.199 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.129.240 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.130.213 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.161.127 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.161.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.47.86 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.53.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.55.164 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.58.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.58.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.62.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.159.63.186 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.160.204.217 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=43.161.238.54 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=43.163.100.59 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.102.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.114.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.115.160 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.116.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.118.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.123.196 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.123.232 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.123.253 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.2.248 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.233.138 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=43.163.4.127 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.4.166 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.6.173 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.6.238 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.83.124 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.83.225 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.88.111 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.88.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.91.241 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.98.140 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.98.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.163.98.36 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.164.1.146 comment="block-attack-Vshell C2" list=BLOCK-BGP
add address=43.166.132.61 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.133.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.133.70 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.153.153 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.154.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.163.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.163.122 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.163.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.164.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.165.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.166.53 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.167.191 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.167.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.167.253 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.170.209 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.171.240 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.161 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.171 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.175 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.176 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.185 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.187 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.203 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.206 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.67 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.230.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.232.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.146 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.155 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.171 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.177 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.249 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.76 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.79 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.166.234.95 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.173.125.228 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=43.173.164.148 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.198.183.171 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.198.223.93 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.198.95.77 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=43.198.97.231 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.199.78.142 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=43.201.100.242 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.201.97.21 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=43.203.253.135 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.207.201.118 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.207.202.39 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.207.68.171 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.208.1.13 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=43.209.19.159 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.210.148.186 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.210.23.244 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.210.28.219 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.210.78.58 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=43.218.124.229 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=43.251.72.254 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=44.194.210.145 comment=block-attack-GoPhish list=BLOCK-BGP
add address=44.198.60.243 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=44.202.35.26 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=44.207.242.127 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=44.227.141.207 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=44.228.242.205 comment="block-attack-Caldera C2" list=BLOCK-BGP
add address=44.239.165.208 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=44.243.204.18 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=44.244.28.174 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=44.249.87.241 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.10.164.177 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=45.112.194.82 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.113.1.204 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=45.116.104.104 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=45.12.2.166 comment=block-attack-GoPhish list=BLOCK-BGP
add address=45.12.70.91 comment=block-attack-GoPhish list=BLOCK-BGP
add address=45.12.89.72 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.126.134.37 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=45.133.234.148 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=45.135.118.251 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=45.136.15.6 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.137.10.110 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=45.137.99.78 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.139.76.169 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.141.136.133 comment="block-attack-RedGuard C2" list=BLOCK-BGP
add address=45.145.228.142 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=45.148.10.212 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.149.154.190 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.149.235.215 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.150.108.175 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=45.152.64.161 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=45.153.129.33 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.153.34.223 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=45.156.248.2 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.192.110.20 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=45.226.189.70 comment=block-attack-GoPhish list=BLOCK-BGP
add address=45.227.253.115 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=45.227.254.130 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=45.227.254.6 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=45.238.142.234 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=45.251.240.151 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=45.32.133.13 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.32.32.252 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=45.32.50.118 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=45.32.82.190 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.33.13.75 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=45.38.42.189 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=45.38.42.197 comment="block-attack-Unam Web Panel" list=BLOCK-BGP
add address=45.42.86.200 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.55.182.145 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=45.55.2.111 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=45.55.58.87 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.56.68.27 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.59.117.195 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.62.123.77 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=45.64.52.231 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.64.52.235 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.64.52.237 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.64.52.30 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=45.66.164.17 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=45.76.215.238 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.76.247.252 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.77.200.160 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=45.77.76.222 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=45.77.95.174 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=45.78.208.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.108 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.111 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.114 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.115 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.119 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.148 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.154 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.155 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.156 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.165 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.168 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.183 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.186 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.187 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.188 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.200 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.208 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.226 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.241 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.250 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.48 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.84 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.208.95 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.167 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.168 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.169 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.171 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.172 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.173 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.176 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.177 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.180 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.181 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.183 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.186 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.188 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.191 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.225 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.227 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.228 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.23 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.236 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.241 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.253 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.56 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.58 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.88 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.9 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.209.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.105 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.134 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.153 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.158 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.161 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.168 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.174 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.178 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.187 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.201 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.205 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.226 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.232 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.45 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.49 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.59 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.73 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.76 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.79 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.210.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.123 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.125 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.137 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.147 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.156 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.187 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.188 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.195 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.196 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.197 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.199 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.200 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.209 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.220 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.237 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.255 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.211.59 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.212.142 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.212.153 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.212.254 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.212.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.212.64 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.212.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.212.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.140 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.142 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.158 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.18 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.185 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.210 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.242 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.71 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.75 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.77 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.79 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.85 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.91 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.213.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.1 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.108 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.114 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.132 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.167 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.255 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.36 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.52 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.53 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.65 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.86 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.214.94 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.110 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.115 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.122 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.125 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.130 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.134 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.138 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.139 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.14 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.144 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.145 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.151 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.160 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.168 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.182 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.192 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.194 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.204 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.206 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.214 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.217 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.218 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.230 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.231 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.238 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.239 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.242 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.249 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.38 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.68 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.78.215.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=45.79.198.18 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=45.79.2.86 comment=block-attack-GoPhish list=BLOCK-BGP
add address=45.79.207.53 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=45.84.242.201 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.88.91.156 comment="block-attack-Unam Web Panel" list=BLOCK-BGP
add address=45.9.249.179 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=45.9.63.19 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=45.92.1.25 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=45.94.31.220 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.101.140.228 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.101.191.5 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=46.101.206.226 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.101.21.16 comment=block-attack-GoPhish list=BLOCK-BGP
add address=46.101.242.214 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.101.64.237 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.101.95.235 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=46.149.76.204 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=46.224.122.140 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.224.143.22 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.225.116.110 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.225.168.157 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.225.219.248 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.225.85.130 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.237.40.128 comment=block-attack-GoPhish list=BLOCK-BGP
add address=46.250.231.5 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.250.245.172 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.30.188.13 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=46.36.84.116 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=46.37.123.16 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.38.238.27 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=46.99.143.224 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=47.100.65.202 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.101.152.28 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.101.179.208 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.102.108.176 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.103.28.176 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.104.254.132 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.105.117.209 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=47.105.227.72 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.105.36.109 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.106.149.60 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.106.179.48 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.107.127.173 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.107.136.106 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.108.211.152 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.109.145.121 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.109.148.39 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=47.109.198.8 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.109.45.70 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.110.63.174 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=47.111.166.212 comment=block-attack-GoPhish list=BLOCK-BGP
add address=47.116.114.93 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.117.118.205 comment=block-attack-GoPhish list=BLOCK-BGP
add address=47.117.143.185 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.117.180.240 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.120.32.72 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.120.38.173 comment=block-attack-GoPhish list=BLOCK-BGP
add address=47.120.46.230 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.120.70.161 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.121.137.8 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.121.191.57 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.122.118.104 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=47.122.144.211 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.129.144.232 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=47.129.156.221 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=47.129.171.26 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.236.130.154 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.236.149.142 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.236.159.248 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.236.166.45 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=47.236.56.15 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.238.237.1 comment=block-attack-GoPhish list=BLOCK-BGP
add address=47.242.107.170 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=47.242.51.181 comment="block-attack-Ares RAT C2" list=BLOCK-BGP
add address=47.243.211.91 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=47.243.238.194 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.245.85.155 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=47.251.77.225 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.252.9.184 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.253.225.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.226.143 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.227.217 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.228.211 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.230.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.231.65 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.232.61 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.234.180 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.234.89 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.235.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.236.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.236.58 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.238.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.253.238.139 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.52.142.159 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.74.242.253 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=47.75.59.35 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.76.163.238 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.76.185.85 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.79.0.159 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.1.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.1.220 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.1.233 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.116.236 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.117.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.119.124 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.119.25 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.119.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.120.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.120.243 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.121.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.121.144 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.121.149 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.121.238 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.121.240 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.122.162 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.123.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.123.211 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.123.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.17.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.2.150 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.2.211 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.2.88 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.20.122 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.20.138 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.20.86 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.21.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.224.167 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.225.235 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.225.251 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.226.190 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.226.65 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.227.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.23.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.240.151 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.240.222 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.240.35 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.3.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.4.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.4.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.5.35 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.6.155 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.6.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.6.220 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.6.36 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.7.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.76.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.76.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.76.137 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.76.179 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.76.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.76.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.77.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.77.158 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.77.167 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.77.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.77.52 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.77.83 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.78.124 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.79.188 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.79.21 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.79.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.98.213 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.98.233 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.98.90 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.79.99.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.0.216 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.100.233 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.101.46 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.111.199 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.119.5 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.120.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.122.117 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.2.142 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.2.181 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.3.189 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.3.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.3.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.141 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.153 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.187 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.230 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.38 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.6 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.4.84 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.135 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.216 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.236 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.5.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.184 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.185 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.197 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.199 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.200 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.206 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.215 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.244 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.248 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.29 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.34 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.6.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.65.207 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.65.208 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.66.43 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.67.149 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.67.240 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.68.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.68.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.68.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.7.81 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.7.85 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.70.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.70.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.70.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.70.213 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.70.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.72.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.72.8 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.73.183 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.73.96 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.74.173 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.74.2 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.80.143 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.82.92.198 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.83.134.97 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=47.83.137.176 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.83.165.246 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.84.83.56 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=47.85.112.1 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.13 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.17 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.24 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.27 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.31 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.39 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.4 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.112.49 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.100 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.101 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.102 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.104 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.122 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.127 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.130 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.131 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.133 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.134 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.147 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.73 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.77 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.86 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.87 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.92 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.85.114.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.88.30.231 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.89.178.108 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=47.90.123.210 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.90.244.171 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.92.109.147 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.92.115.148 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.92.169.87 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.93.240.197 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=47.93.28.103 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.94.136.17 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.94.165.50 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.94.193.73 comment=block-attack-GoPhish list=BLOCK-BGP
add address=47.94.22.128 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.94.23.151 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.96.64.80 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.97.7.188 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=47.98.125.4 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.98.177.117 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=47.98.224.209 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=47.98.253.102 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=47.98.39.223 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=47.99.124.12 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=47.99.60.249 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=47.99.92.6 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=48.202.57.44 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=48.209.82.226 comment=block-attack-GoPhish list=BLOCK-BGP
add address=48.217.21.253 comment=block-attack-GoPhish list=BLOCK-BGP
add address=48.217.50.253 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=49.12.36.173 comment=block-attack-GoPhish list=BLOCK-BGP
add address=49.212.143.246 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=49.232.175.33 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=49.234.14.244 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=49.51.137.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.160.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.163.183 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.163.239 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.167.19 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.171.227 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.184.40 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.189.128 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.199.201 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.200.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.201.109 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=49.51.202.211 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.204.60 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.205.186 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.228.200 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.229.254 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.229.38 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.230.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.242.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.38.42 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=49.51.70.159 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=5.1.100.217 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=5.133.122.68 comment=block-attack-GoPhish list=BLOCK-BGP
add address=5.160.135.38 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=5.161.72.214 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=5.181.1.145 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=5.188.227.87 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=5.188.227.90 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=5.188.227.91 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=5.189.140.26 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=5.189.147.128 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=5.2.72.106 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=5.249.145.51 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=5.252.178.38 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=5.44.240.151 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=5.89.184.32 comment="block-attack-Unam Web Panel" list=BLOCK-BGP
add address=5.9.129.105 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=50.118.244.218 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=50.118.244.220 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=50.118.244.222 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=51.103.102.86 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=51.103.27.26 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.118.54.90 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.118.55.45 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.118.70.130 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.118.73.143 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.118.73.167 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.12.243.123 comment=block-attack-GoPhish list=BLOCK-BGP
add address=51.15.8.6 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.159.67.189 comment=block-attack-GoPhish list=BLOCK-BGP
add address=51.16.250.217 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.16.38.200 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.16.48.44 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.16.49.54 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.16.50.123 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.161.35.113 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.17.127.126 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.17.24.49 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.178.55.147 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=51.195.148.62 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=51.195.209.197 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=51.20.107.164 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=51.20.190.124 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.222.87.16 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=51.250.107.234 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.254.33.199 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.255.202.32 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.255.46.245 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.34.117.1 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.34.117.167 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.34.38.242 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.38.220.225 comment=block-attack-GoPhish list=BLOCK-BGP
add address=51.44.18.152 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.49.176.91 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.49.75.131 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.68.204.240 comment=block-attack-ShadowPad list=BLOCK-BGP
add address=51.68.220.158 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=51.68.45.68 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=51.75.62.52 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.81.155.58 comment=block-attack-GoPhish list=BLOCK-BGP
add address=51.81.171.234 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=51.81.237.25 comment=block-attack-GoPhish list=BLOCK-BGP
add address=51.83.133.9 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.83.185.120 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=51.84.12.4 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.84.12.87 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.84.166.238 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.84.174.92 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.84.202.8 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.84.226.149 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.84.240.112 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.84.240.238 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.84.240.92 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.84.65.219 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.85.33.185 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.85.37.158 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.89.84.155 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=51.92.194.105 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=51.94.22.7 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=51.96.136.98 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.151.31.52 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=52.17.32.113 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.173.131.28 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.188.13.228 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=52.196.167.250 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=52.199.136.69 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.199.82.99 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=52.202.118.237 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.207.63.108 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=52.208.213.93 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=52.209.228.84 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.211.59.57 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=52.221.94.208 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=52.33.169.241 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=52.33.172.154 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=52.47.200.98 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.49.175.34 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.52.223.173 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.56.72.244 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.59.46.78 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.59.76.24 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.63.177.98 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.78.17.170 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.78.193.98 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.79.217.25 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.79.221.72 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=52.9.67.57 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=52.91.141.114 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=54.147.24.88 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.151.101.240 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.151.102.18 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=54.151.171.203 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.151.74.185 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.157.201.69 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.164.185.22 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.167.65.206 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=54.168.218.114 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.172.210.11 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.176.12.121 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.176.155.131 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.177.100.78 comment="block-attack-Caldera C2" list=BLOCK-BGP
add address=54.177.158.57 comment=block-attack-GoPhish list=BLOCK-BGP
add address=54.177.76.2 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=54.177.88.136 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=54.179.123.221 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.180.78.177 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=54.183.38.42 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=54.185.235.168 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=54.186.95.53 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.188.78.52 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.196.78.167 comment=block-attack-GoPhish list=BLOCK-BGP
add address=54.207.125.239 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.213.75.53 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.215.56.78 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=54.217.106.72 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.217.188.215 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.219.109.185 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.220.117.204 comment=block-attack-GoPhish list=BLOCK-BGP
add address=54.227.170.22 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.228.155.10 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.233.201.52 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.233.23.90 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.233.238.238 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.241.253.213 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.244.207.43 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.255.194.116 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.37.226.76 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=54.67.119.171 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=54.72.5.90 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=54.79.137.35 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.80.190.97 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=54.86.17.177 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.90.105.1 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.90.73.58 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=54.91.238.148 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=56.112.40.207 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=56.124.92.38 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=56.125.229.208 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=56.125.9.108 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=56.125.9.234 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=56.155.124.60 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=56.155.82.123 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=57.128.255.124 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=57.129.110.30 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=57.131.13.132 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=57.158.27.132 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=57.180.228.100 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=59.110.137.87 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=59.110.221.22 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=59.110.28.230 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=59.110.40.60 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=59.127.36.79 comment=block-attack-GoPhish list=BLOCK-BGP
add address=60.191.208.227 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=60.205.139.210 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=60.247.206.23 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=61.1.218.68 comment="block-attack-Mozi Botnet" list=BLOCK-BGP
add address=62.146.169.174 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=62.164.177.110 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=62.164.177.46 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=62.171.138.199 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=62.171.153.214 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=62.171.158.126 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=62.171.166.237 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=62.210.114.160 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=62.210.172.157 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=62.210.65.115 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=62.4.0.66 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=62.60.153.192 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=62.60.157.208 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=62.60.246.234 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=62.60.248.110 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=62.84.102.124 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=63.180.196.184 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=63.182.137.144 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=63.183.32.19 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=63.88.77.169 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=64.111.92.37 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=64.111.93.170 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.176.37.51 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.176.41.241 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.181.235.0 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=64.188.93.213 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.20.47.166 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=64.20.54.170 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=64.225.39.118 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.225.64.178 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.226.101.105 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.226.85.48 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=64.227.100.207 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.227.142.218 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.227.178.226 comment=block-attack-GoPhish list=BLOCK-BGP
add address=64.23.139.223 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.23.164.161 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=64.23.184.180 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.23.213.61 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=64.23.231.32 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=64.23.248.252 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=64.25.109.212 comment=block-attack-GoPhish list=BLOCK-BGP
add address=64.255.203.222 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=64.64.252.47 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=64.76.214.54 comment=block-attack-GoPhish list=BLOCK-BGP
add address=65.0.85.96 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=65.0.86.94 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=65.108.199.124 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=65.108.200.43 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=65.108.40.41 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=65.108.68.112 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=65.109.12.27 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=65.109.17.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=65.109.213.34 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=65.109.239.71 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=65.109.60.224 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=65.2.189.32 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=65.21.92.227 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=65.49.238.93 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=65.73.250.246 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=65.87.7.146 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=65.87.7.76 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=66.154.117.64 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=66.181.42.16 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=66.45.240.82 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=66.78.40.126 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=66.85.173.48 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=66.94.126.203 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=67.190.127.122 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=67.205.158.194 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=67.207.69.36 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=67.213.210.24 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=67.70.241.201 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=68.183.11.151 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=68.183.156.215 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=68.183.183.150 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=68.210.136.253 comment="block-attack-Supershell C2" list=\
    BLOCK-BGP
add address=68.64.177.239 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=69.10.41.22 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=69.10.59.202 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=69.164.207.162 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=69.169.97.55 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=70.169.51.111 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=70.34.196.238 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=71.131.51.37 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=72.142.102.143 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=72.23.229.75 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=74.119.149.100 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.103 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.106 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.109 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.11 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.113 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.120 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.21 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.26 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.28 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.32 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.33 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.36 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.37 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.41 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.50 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.51 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.54 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.62 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.63 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.69 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.7 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.73 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.81 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.93 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.97 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.98 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.119.149.99 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.208.201.158 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=74.225.248.130 comment=block-attack-GoPhish list=BLOCK-BGP
add address=74.249.119.149 comment=block-attack-GoPhish list=BLOCK-BGP
add address=74.48.50.55 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=74.50.76.118 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.50.77.126 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.50.78.86 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.50.79.138 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=74.50.85.45 comment="block-attack-XMRig Monero Cryptominer" list=\
    BLOCK-BGP
add address=74.50.95.246 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=77.105.136.66 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=77.105.139.80 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=77.110.99.33 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=77.199.95.201 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=77.221.153.99 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=77.237.233.73 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=77.237.234.130 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=77.238.248.158 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=77.246.108.212 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=77.42.46.131 comment=block-attack-GoPhish list=BLOCK-BGP
add address=77.51.219.187 comment=block-attack-GoPhish list=BLOCK-BGP
add address=77.81.247.31 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=77.90.185.30 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=77.92.95.127 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=77.92.95.143 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=77.92.95.144 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=78.12.220.164 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=78.138.9.69 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=78.192.214.83 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=78.38.80.242 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=79.124.62.10 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=79.141.174.123 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=79.143.87.222 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=79.148.106.231 comment=block-attack-GoPhish list=BLOCK-BGP
add address=79.175.189.207 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=8.130.13.250 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=8.130.89.132 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.134.147.233 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=8.137.111.232 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.137.114.210 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.137.123.125 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=8.137.149.67 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.137.16.111 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=8.137.61.71 comment="block-attack-XMRig Monero Cryptominer" list=\
    BLOCK-BGP
add address=8.137.62.229 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=8.137.98.105 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.138.122.109 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.138.155.217 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.138.167.123 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.138.176.208 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.138.185.255 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.138.222.215 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=8.140.255.31 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.141.93.66 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.147.128.54 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.148.211.238 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.148.71.198 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=8.153.205.30 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.155.52.126 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=8.159.146.72 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=8.163.56.153 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.17.56.128 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=8.209.67.71 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.210.236.220 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=8.210.248.241 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=8.210.77.104 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=8.211.10.181 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.213.158.129 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.213.18.119 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=8.213.35.190 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=8.215.205.13 comment=block-attack-GoPhish list=BLOCK-BGP
add address=8.216.84.159 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.217.200.158 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.217.222.41 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.217.85.66 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.218.120.126 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.218.138.77 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.218.231.53 comment="block-attack-Supershell C2" list=BLOCK-BGP
add address=8.218.237.228 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=8.219.76.168 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.219.78.159 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=8.219.84.171 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=8.220.195.197 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=8.222.206.6 comment="block-attack-XMRig Monero Cryptominer" list=\
    BLOCK-BGP
add address=80.253.249.108 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=80.71.224.121 comment=block-attack-GoPhish list=BLOCK-BGP
add address=80.75.212.10 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.20 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.30 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.57 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.66 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.74 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.76 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.75.212.84 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=80.78.19.71 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=80.78.23.93 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=80.91.79.31 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=80.94.92.133 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=80.94.95.27 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=81.169.151.12 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=81.17.99.174 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=81.68.129.242 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=81.68.89.216 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=81.70.37.146 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=81.71.82.54 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=81.88.26.239 comment=block-attack-GoPhish list=BLOCK-BGP
add address=82.153.138.43 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=82.158.225.88 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=82.165.110.142 comment=block-attack-GoPhish list=BLOCK-BGP
add address=82.165.218.73 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=82.165.51.16 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=82.66.142.57 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=82.66.185.138 comment="block-attack-Unam Web Panel" list=\
    BLOCK-BGP
add address=82.67.91.231 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=82.69.122.59 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=83.142.209.13 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=83.142.209.3 comment=block-attack-Hookbot list=BLOCK-BGP
add address=83.173.113.66 comment=block-attack-GoPhish list=BLOCK-BGP
add address=83.228.218.74 comment=block-attack-GoPhish list=BLOCK-BGP
add address=83.229.123.221 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=83.229.123.61 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=83.229.126.183 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=83.229.127.46 comment=block-attack-Cobaltstrike list=BLOCK-BGP
add address=83.243.64.180 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=84.17.45.180 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=84.17.56.234 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=84.21.171.168 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=84.247.13.17 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=84.247.148.116 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=84.247.166.79 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=84.247.168.191 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=84.247.172.149 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=84.46.255.242 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=85.158.108.55 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=85.158.57.170 comment="block-attack-Covenant C2" list=BLOCK-BGP
add address=85.17.145.10 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=85.17.145.7 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=85.192.27.126 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=85.209.120.47 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=85.214.12.66 comment="block-attack-NanoCore RAT Trojan" list=\
    BLOCK-BGP
add address=85.215.180.194 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=85.215.44.146 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=85.234.91.247 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=85.237.211.100 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=85.90.244.171 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=86.106.143.213 comment="block-attack-Cobalt Strike C2" list=\
    BLOCK-BGP
add address=87.106.187.97 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=87.106.203.84 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=87.106.64.174 comment=block-attack-GoPhish list=BLOCK-BGP
add address=87.120.167.80 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=87.125.64.65 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=87.126.82.122 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=87.98.235.166 comment=block-attack-GoPhish list=BLOCK-BGP
add address=88.119.170.212 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=88.129.241.65 comment="block-attack-Gh0st RAT Trojan" list=\
    BLOCK-BGP
add address=88.198.163.90 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=88.201.153.72 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=88.210.10.64 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=88.210.13.112 comment="block-attack-Orcus RAT Trojan" list=\
    BLOCK-BGP
add address=88.218.0.8 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=88.247.35.166 comment="block-attack-DarkComet Trojan" list=\
    BLOCK-BGP
add address=88.99.213.30 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=88.99.214.170 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=88.99.99.45 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=89.110.122.152 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=89.124.67.107 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=89.124.74.114 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=89.124.82.164 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=89.124.85.4 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=89.125.50.183 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=89.163.214.74 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=89.167.39.239 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=89.168.42.140 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=89.169.131.254 comment=block-attack-GoPhish list=BLOCK-BGP
add address=89.197.168.150 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=89.39.70.110 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=89.58.40.80 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=89.58.9.56 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=90.152.137.179 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=90.152.152.28 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=90.152.159.168 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=90.156.225.193 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=91.208.197.232 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=91.215.85.51 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=91.224.92.173 comment="block-attack-Sectop RAT" list=BLOCK-BGP
add address=91.99.225.223 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=92.113.148.153 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=92.118.127.79 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=92.145.231.122 comment="block-attack-Hak5 Cloud C2" list=\
    BLOCK-BGP
add address=92.34.34.196 comment="block-attack-Gh0st RAT Trojan" list=\
    BLOCK-BGP
add address=92.63.163.8 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=93.127.222.27 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=93.144.96.45 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=93.179.115.149 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=93.95.112.53 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=94.102.2.229 comment=block-attack-GoPhish list=BLOCK-BGP
add address=94.103.12.167 comment=block-attack-GoPhish list=BLOCK-BGP
add address=94.103.91.124 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=94.130.90.232 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=94.154.35.73 comment=block-attack-AsyncRAT list=BLOCK-BGP
add address=94.185.79.214 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=94.46.171.220 comment=block-attack-GoPhish list=BLOCK-BGP
add address=94.74.0.253 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=94.96.170.237 comment="block-attack-XtremeRAT Trojan" list=\
    BLOCK-BGP
add address=94.99.72.7 comment="block-attack-XtremeRAT Trojan" list=BLOCK-BGP
add address=95.110.142.86 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=95.133.243.159 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=95.141.242.12 comment=block-attack-Kimwolf list=BLOCK-BGP
add address=95.179.211.228 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=95.179.249.144 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=95.214.181.93 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=95.216.107.61 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=95.216.212.8 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=95.216.222.174 comment=block-attack-GoPhish list=BLOCK-BGP
add address=95.217.114.203 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=95.217.114.205 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=95.40.107.121 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=95.40.114.64 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=95.40.28.243 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=95.40.79.184 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=95.40.98.66 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=95.66.124.61 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=95.82.0.207 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=96.126.108.228 comment=block-attack-BurpSuite list=BLOCK-BGP
add address=96.44.169.165 comment="block-attack-Sliver C2" list=BLOCK-BGP
add address=98.110.203.122 comment="block-attack-NetBus Trojan" list=\
    BLOCK-BGP
add address=98.130.124.6 comment="block-attack-Metasploit Framework C2" list=\
    BLOCK-BGP
add address=98.130.44.163 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=98.130.84.227 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=98.142.138.191 comment="block-attack-PANDA C2" list=BLOCK-BGP
add address=98.158.162.7 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=98.84.159.123 comment="block-attack-Metasploit Framework C2" \
    list=BLOCK-BGP
add address=98.85.71.175 comment="block-attack-Mythic C2" list=BLOCK-BGP
add address=98.88.22.166 comment=block-attack-GoPhish list=BLOCK-BGP
add address=98.93.238.205 comment="block-attack-Havoc C2" list=BLOCK-BGP
add address=99.246.13.237 comment="block-attack-Quasar RAT" list=BLOCK-BGP
add address=99.251.118.240 comment="block-attack-XMRig Monero Cryptominer" \
    list=BLOCK-BGP
add address=99.79.172.196 comment="block-attack-Hak5 Cloud C2" list=BLOCK-BGP
add address=99.79.9.18 comment=block-attack-GoPhish list=BLOCK-BGP
add address=91.190.98.29 comment=block-attack-EGP list=BLOCK-BGP
add address=91.190.98.183 comment=block-attack-EGP list=BLOCK-BGP
add address=1.0.133.100 list=BLOCK-BGP
add address=1.0.205.87 list=BLOCK-BGP
add address=1.9.167.35 list=BLOCK-BGP
add address=1.9.167.36 list=BLOCK-BGP
add address=1.20.95.95 list=BLOCK-BGP
add address=1.20.96.156 list=BLOCK-BGP
add address=1.20.97.181 list=BLOCK-BGP
add address=1.20.100.45 list=BLOCK-BGP
add address=1.20.100.111 list=BLOCK-BGP
add address=1.20.137.82 list=BLOCK-BGP
add address=1.20.184.75 list=BLOCK-BGP
add address=1.20.220.79 list=BLOCK-BGP
add address=1.32.59.217 list=BLOCK-BGP
add address=1.53.137.84 list=BLOCK-BGP
add address=1.53.137.92 list=BLOCK-BGP
add address=1.62.2.147 list=BLOCK-BGP
add address=1.79.106.197 list=BLOCK-BGP
add address=1.123.37.68 list=BLOCK-BGP
add address=1.179.144.41 list=BLOCK-BGP
add address=1.179.148.9 list=BLOCK-BGP
add address=1.179.151.226 list=BLOCK-BGP
add address=1.179.173.114 list=BLOCK-BGP
add address=1.179.180.98 list=BLOCK-BGP
add address=1.179.183.73 list=BLOCK-BGP
add address=1.179.198.226 list=BLOCK-BGP
add address=1.180.0.162 list=BLOCK-BGP
add address=1.180.49.222 list=BLOCK-BGP
add address=1.192.127.132 list=BLOCK-BGP
add address=1.195.16.247 list=BLOCK-BGP
add address=1.196.159.155 list=BLOCK-BGP
add address=1.198.98.106 list=BLOCK-BGP
add address=1.212.157.114 list=BLOCK-BGP
add address=1.221.173.148 list=BLOCK-BGP
add address=1.228.44.149 list=BLOCK-BGP
add address=1.248.122.240 list=BLOCK-BGP
add address=2.56.59.42 list=BLOCK-BGP
add address=2.56.59.53 list=BLOCK-BGP
add address=2.56.91.165 list=BLOCK-BGP
add address=2.57.186.211 list=BLOCK-BGP
add address=2.57.186.252 list=BLOCK-BGP
add address=2.57.187.20 list=BLOCK-BGP
add address=2.59.161.190 list=BLOCK-BGP
add address=2.59.254.19 list=BLOCK-BGP
add address=2.89.25.131 list=BLOCK-BGP
add address=2.91.16.80 list=BLOCK-BGP
add address=2.91.23.249 list=BLOCK-BGP
add address=2.91.183.220 list=BLOCK-BGP
add address=2.91.191.6 list=BLOCK-BGP
add address=2.135.223.134 list=BLOCK-BGP
add address=3.141.13.98 list=BLOCK-BGP
add address=3.213.208.204 list=BLOCK-BGP
add address=4.193.175.237 list=BLOCK-BGP
add address=5.2.69.14 list=BLOCK-BGP
add address=5.2.70.65 list=BLOCK-BGP
add address=5.2.200.203 list=BLOCK-BGP
add address=5.8.18.233 list=BLOCK-BGP
add address=5.8.18.240 list=BLOCK-BGP
add address=5.17.89.13 list=BLOCK-BGP
add address=5.42.64.13 list=BLOCK-BGP
add address=5.42.64.33 list=BLOCK-BGP
add address=5.42.65.1 list=BLOCK-BGP
add address=5.42.65.18 list=BLOCK-BGP
add address=5.42.72.113 list=BLOCK-BGP
add address=5.42.92.43 list=BLOCK-BGP
add address=5.42.92.67 list=BLOCK-BGP
add address=5.42.92.88 list=BLOCK-BGP
add address=5.42.92.211 list=BLOCK-BGP
add address=5.53.224.35 list=BLOCK-BGP
add address=5.53.224.66 list=BLOCK-BGP
add address=5.53.224.173 list=BLOCK-BGP
add address=5.53.225.15 list=BLOCK-BGP
add address=5.53.225.69 list=BLOCK-BGP
add address=5.53.225.156 list=BLOCK-BGP
add address=5.53.226.2 list=BLOCK-BGP
add address=5.53.226.113 list=BLOCK-BGP
add address=5.53.226.226 list=BLOCK-BGP
add address=5.53.227.22 list=BLOCK-BGP
add address=5.53.227.30 list=BLOCK-BGP
add address=5.53.227.61 list=BLOCK-BGP
add address=5.53.227.71 list=BLOCK-BGP
add address=5.53.227.222 list=BLOCK-BGP
add address=5.63.187.116 list=BLOCK-BGP
add address=5.83.104.173 list=BLOCK-BGP
add address=5.102.58.41 list=BLOCK-BGP
add address=5.141.81.106 list=BLOCK-BGP
add address=5.161.136.176 list=BLOCK-BGP
add address=5.163.121.21 list=BLOCK-BGP
add address=5.163.125.115 list=BLOCK-BGP
add address=5.163.144.114 list=BLOCK-BGP
add address=5.163.153.28 list=BLOCK-BGP
add address=5.163.153.242 list=BLOCK-BGP
add address=5.163.163.206 list=BLOCK-BGP
add address=5.163.170.15 list=BLOCK-BGP
add address=5.163.173.178 list=BLOCK-BGP
add address=5.163.179.4 list=BLOCK-BGP
add address=5.163.181.166 list=BLOCK-BGP
add address=5.163.183.190 list=BLOCK-BGP
add address=5.163.188.72 list=BLOCK-BGP
add address=5.163.190.65 list=BLOCK-BGP
add address=5.163.230.26 list=BLOCK-BGP
add address=5.163.232.92 list=BLOCK-BGP
add address=5.163.237.112 list=BLOCK-BGP
add address=5.163.243.16 list=BLOCK-BGP
add address=5.163.251.152 list=BLOCK-BGP
add address=5.163.254.205 list=BLOCK-BGP
add address=5.178.217.227 list=BLOCK-BGP
add address=5.188.3.73 list=BLOCK-BGP
add address=5.188.86.18 list=BLOCK-BGP
add address=5.188.88.112 list=BLOCK-BGP
add address=5.188.89.120 list=BLOCK-BGP
add address=5.188.89.124 list=BLOCK-BGP
add address=5.188.206.14 list=BLOCK-BGP
add address=5.188.206.76 list=BLOCK-BGP
add address=5.199.162.229 list=BLOCK-BGP
add address=5.252.153.134 list=BLOCK-BGP
add address=8.42.68.125 list=BLOCK-BGP
add address=8.210.163.174 list=BLOCK-BGP
add address=8.211.5.234 list=BLOCK-BGP
add address=8.211.5.235 list=BLOCK-BGP
add address=8.212.49.116 list=BLOCK-BGP
add address=8.242.207.202 list=BLOCK-BGP
add address=13.59.205.66 list=BLOCK-BGP
add address=13.68.141.149 list=BLOCK-BGP
add address=13.77.222.211 list=BLOCK-BGP
add address=13.82.24.228 list=BLOCK-BGP
add address=13.234.112.224 list=BLOCK-BGP
add address=14.115.106.190 list=BLOCK-BGP
add address=14.140.131.82 list=BLOCK-BGP
add address=14.161.31.192 list=BLOCK-BGP
add address=14.224.172.179 list=BLOCK-BGP
add address=14.232.160.247 list=BLOCK-BGP
add address=14.232.163.52 list=BLOCK-BGP
add address=14.241.72.25 list=BLOCK-BGP
add address=18.67.129.2 list=BLOCK-BGP
add address=18.161.200.33 list=BLOCK-BGP
add address=18.167.94.81 list=BLOCK-BGP
add address=20.24.242.130 list=BLOCK-BGP
add address=20.52.33.123 list=BLOCK-BGP
add address=20.114.22.8 list=BLOCK-BGP
add address=20.196.209.5 list=BLOCK-BGP
add address=20.196.211.129 list=BLOCK-BGP
add address=20.214.233.50 list=BLOCK-BGP
add address=20.219.15.184 list=BLOCK-BGP
add address=20.247.113.72 list=BLOCK-BGP
add address=20.249.89.181 list=BLOCK-BGP
add address=23.27.92.85 list=BLOCK-BGP
add address=23.80.139.169 list=BLOCK-BGP
add address=23.82.60.19 list=BLOCK-BGP
add address=23.82.134.109 list=BLOCK-BGP
add address=23.82.141.146 list=BLOCK-BGP
add address=23.82.162.102 list=BLOCK-BGP
add address=23.90.21.164 list=BLOCK-BGP
add address=23.92.221.188 list=BLOCK-BGP
add address=23.94.252.8 list=BLOCK-BGP
add address=23.95.132.48 list=BLOCK-BGP
add address=23.106.223.97 list=BLOCK-BGP
add address=23.146.242.71 list=BLOCK-BGP
add address=23.224.56.198 list=BLOCK-BGP
add address=23.224.56.199 list=BLOCK-BGP
add address=23.225.162.243 list=BLOCK-BGP
add address=23.229.29.48 list=BLOCK-BGP
add address=23.230.6.18 list=BLOCK-BGP
add address=23.231.83.9 list=BLOCK-BGP
add address=23.234.25.25 list=BLOCK-BGP
add address=23.234.29.58 list=BLOCK-BGP
add address=23.234.48.142 list=BLOCK-BGP
add address=23.234.217.205 list=BLOCK-BGP
add address=23.251.41.128 list=BLOCK-BGP
add address=24.122.219.155 list=BLOCK-BGP
add address=24.139.143.226 list=BLOCK-BGP
add address=27.50.22.30 list=BLOCK-BGP
add address=27.74.243.242 list=BLOCK-BGP
add address=27.106.84.186 list=BLOCK-BGP
add address=27.123.255.82 list=BLOCK-BGP
add address=27.147.144.122 list=BLOCK-BGP
add address=27.147.183.45 list=BLOCK-BGP
add address=27.219.254.218 list=BLOCK-BGP
add address=31.10.110.132 list=BLOCK-BGP
add address=31.13.213.89 list=BLOCK-BGP
add address=31.28.99.25 list=BLOCK-BGP
add address=31.28.241.117 list=BLOCK-BGP
add address=31.41.90.142 list=BLOCK-BGP
add address=31.41.244.200 list=BLOCK-BGP
add address=31.42.190.173 list=BLOCK-BGP
add address=31.43.185.29 list=BLOCK-BGP
add address=31.43.185.30 list=BLOCK-BGP
add address=31.44.3.2 list=BLOCK-BGP
add address=31.44.7.72 list=BLOCK-BGP
add address=31.44.184.84 list=BLOCK-BGP
add address=31.56.39.167 list=BLOCK-BGP
add address=31.57.216.27 list=BLOCK-BGP
add address=31.57.216.28 list=BLOCK-BGP
add address=31.146.161.194 list=BLOCK-BGP
add address=31.166.39.104 list=BLOCK-BGP
add address=31.166.71.196 list=BLOCK-BGP
add address=31.166.73.1 list=BLOCK-BGP
add address=31.166.95.187 list=BLOCK-BGP
add address=31.166.98.159 list=BLOCK-BGP
add address=31.166.134.207 list=BLOCK-BGP
add address=31.166.137.85 list=BLOCK-BGP
add address=31.166.141.151 list=BLOCK-BGP
add address=31.166.141.166 list=BLOCK-BGP
add address=31.166.170.180 list=BLOCK-BGP
add address=31.166.209.227 list=BLOCK-BGP
add address=31.166.224.38 list=BLOCK-BGP
add address=31.167.149.141 list=BLOCK-BGP
add address=31.167.180.141 list=BLOCK-BGP
add address=31.167.184.210 list=BLOCK-BGP
add address=31.167.243.168 list=BLOCK-BGP
add address=31.167.248.197 list=BLOCK-BGP
add address=31.184.198.83 list=BLOCK-BGP
add address=31.184.198.111 list=BLOCK-BGP
add address=31.209.98.18 list=BLOCK-BGP
add address=31.210.134.114 list=BLOCK-BGP
add address=34.126.184.144 list=BLOCK-BGP
add address=34.138.15.9 list=BLOCK-BGP
add address=34.138.254.66 list=BLOCK-BGP
add address=34.237.204.196 list=BLOCK-BGP
add address=35.78.43.159 list=BLOCK-BGP
add address=35.169.201.87 list=BLOCK-BGP
add address=35.193.121.248 list=BLOCK-BGP
add address=35.226.94.113 list=BLOCK-BGP
add address=35.233.138.132 list=BLOCK-BGP
add address=35.240.155.247 list=BLOCK-BGP
add address=36.7.252.165 list=BLOCK-BGP
add address=36.37.81.135 list=BLOCK-BGP
add address=36.37.160.242 list=BLOCK-BGP
add address=36.66.19.10 list=BLOCK-BGP
add address=36.66.61.7 list=BLOCK-BGP
add address=36.67.27.205 list=BLOCK-BGP
add address=36.67.63.239 list=BLOCK-BGP
add address=36.72.118.156 list=BLOCK-BGP
add address=36.89.94.139 list=BLOCK-BGP
add address=36.89.188.123 list=BLOCK-BGP
add address=36.89.193.169 list=BLOCK-BGP
add address=36.91.45.10 list=BLOCK-BGP
add address=36.91.148.37 list=BLOCK-BGP
add address=36.92.85.66 list=BLOCK-BGP
add address=36.93.16.226 list=BLOCK-BGP
add address=36.94.2.138 list=BLOCK-BGP
add address=36.94.27.124 list=BLOCK-BGP
add address=36.94.35.217 list=BLOCK-BGP
add address=36.94.47.58 list=BLOCK-BGP
add address=36.94.47.59 list=BLOCK-BGP
add address=36.94.58.26 list=BLOCK-BGP
add address=36.95.15.147 list=BLOCK-BGP
add address=36.95.53.185 list=BLOCK-BGP
add address=36.95.245.95 list=BLOCK-BGP
add address=36.95.249.157 list=BLOCK-BGP
add address=37.17.168.163 list=BLOCK-BGP
add address=37.49.230.54 list=BLOCK-BGP
add address=37.56.99.78 list=BLOCK-BGP
add address=37.56.108.22 list=BLOCK-BGP
add address=37.56.110.185 list=BLOCK-BGP
add address=37.57.15.43 list=BLOCK-BGP
add address=37.57.37.213 list=BLOCK-BGP
add address=37.57.50.130 list=BLOCK-BGP
add address=37.61.213.242 list=BLOCK-BGP
add address=37.75.41.110 list=BLOCK-BGP
add address=37.75.44.24 list=BLOCK-BGP
add address=37.75.135.161 list=BLOCK-BGP
add address=37.98.231.2 list=BLOCK-BGP
add address=37.104.26.23 list=BLOCK-BGP
add address=37.104.26.241 list=BLOCK-BGP
add address=37.105.30.45 list=BLOCK-BGP
add address=37.120.238.58 list=BLOCK-BGP
add address=37.193.91.79 list=BLOCK-BGP
add address=37.220.86.117 list=BLOCK-BGP
add address=37.220.86.207 list=BLOCK-BGP
add address=37.220.87.63 list=BLOCK-BGP
add address=37.220.87.66 list=BLOCK-BGP
add address=37.220.87.68 list=BLOCK-BGP
add address=37.220.87.69 list=BLOCK-BGP
add address=37.221.204.206 list=BLOCK-BGP
add address=37.228.65.107 list=BLOCK-BGP
add address=37.235.212.243 list=BLOCK-BGP
add address=38.6.97.139 list=BLOCK-BGP
add address=38.10.246.85 list=BLOCK-BGP
add address=38.12.74.145 list=BLOCK-BGP
add address=38.14.40.147 list=BLOCK-BGP
add address=38.14.46.184 list=BLOCK-BGP
add address=38.14.237.199 list=BLOCK-BGP
add address=38.22.109.7 list=BLOCK-BGP
add address=38.26.210.4 list=BLOCK-BGP
add address=38.28.253.56 list=BLOCK-BGP
add address=38.36.94.163 list=BLOCK-BGP
add address=38.36.198.67 list=BLOCK-BGP
add address=38.36.219.41 list=BLOCK-BGP
add address=38.37.161.38 list=BLOCK-BGP
add address=38.37.215.141 list=BLOCK-BGP
add address=38.37.215.226 list=BLOCK-BGP
add address=38.37.238.139 list=BLOCK-BGP
add address=38.40.193.10 list=BLOCK-BGP
add address=38.40.235.204 list=BLOCK-BGP
add address=38.53.10.230 list=BLOCK-BGP
add address=38.53.70.151 list=BLOCK-BGP
add address=38.53.73.180 list=BLOCK-BGP
add address=38.53.95.56 list=BLOCK-BGP
add address=38.53.95.222 list=BLOCK-BGP
add address=38.54.183.219 list=BLOCK-BGP
add address=38.59.30.2 list=BLOCK-BGP
add address=38.59.48.88 list=BLOCK-BGP
add address=38.59.59.9 list=BLOCK-BGP
add address=38.59.76.201 list=BLOCK-BGP
add address=38.59.77.113 list=BLOCK-BGP
add address=38.59.87.126 list=BLOCK-BGP
add address=38.59.104.11 list=BLOCK-BGP
add address=38.60.38.78 list=BLOCK-BGP
add address=38.60.38.136 list=BLOCK-BGP
add address=38.63.37.68 list=BLOCK-BGP
add address=38.83.108.16 list=BLOCK-BGP
add address=38.108.119.121 list=BLOCK-BGP
add address=38.133.200.94 list=BLOCK-BGP
add address=38.148.205.213 list=BLOCK-BGP
add address=38.148.249.118 list=BLOCK-BGP
add address=38.163.115.131 list=BLOCK-BGP
add address=38.163.202.236 list=BLOCK-BGP
add address=38.173.146.143 list=BLOCK-BGP
add address=38.173.172.87 list=BLOCK-BGP
add address=38.174.187.159 list=BLOCK-BGP
add address=38.177.117.148 list=BLOCK-BGP
add address=38.181.25.117 list=BLOCK-BGP
add address=38.207.3.29 list=BLOCK-BGP
add address=38.238.169.164 list=BLOCK-BGP
add address=38.239.99.24 list=BLOCK-BGP
add address=38.239.99.155 list=BLOCK-BGP
add address=38.239.128.39 list=BLOCK-BGP
add address=38.249.118.58 list=BLOCK-BGP
add address=39.65.129.136 list=BLOCK-BGP
add address=40.64.93.91 list=BLOCK-BGP
add address=40.117.139.198 list=BLOCK-BGP
add address=41.33.86.242 list=BLOCK-BGP
add address=41.57.108.247 list=BLOCK-BGP
add address=41.65.67.166 list=BLOCK-BGP
add address=41.65.174.34 list=BLOCK-BGP
add address=41.75.85.22 list=BLOCK-BGP
add address=41.75.113.217 list=BLOCK-BGP
add address=41.76.157.202 list=BLOCK-BGP
add address=41.76.242.14 list=BLOCK-BGP
add address=41.77.23.120 list=BLOCK-BGP
add address=41.79.10.218 list=BLOCK-BGP
add address=41.79.49.23 list=BLOCK-BGP
add address=41.86.56.224 list=BLOCK-BGP
add address=41.162.94.52 list=BLOCK-BGP
add address=41.169.70.219 list=BLOCK-BGP
add address=41.169.152.154 list=BLOCK-BGP
add address=41.170.12.92 list=BLOCK-BGP
add address=41.180.68.195 list=BLOCK-BGP
add address=41.190.92.84 list=BLOCK-BGP
add address=41.190.232.36 list=BLOCK-BGP
add address=41.190.233.56 list=BLOCK-BGP
add address=41.204.87.90 list=BLOCK-BGP
add address=41.220.125.198 list=BLOCK-BGP
add address=41.223.108.13 list=BLOCK-BGP
add address=41.242.66.74 list=BLOCK-BGP
add address=41.242.70.5 list=BLOCK-BGP
add address=43.198.249.91 list=BLOCK-BGP
add address=43.200.164.102 list=BLOCK-BGP
add address=43.224.10.13 list=BLOCK-BGP
add address=43.224.10.43 list=BLOCK-BGP
add address=43.225.151.198 list=BLOCK-BGP
add address=43.227.129.65 list=BLOCK-BGP
add address=43.228.95.122 list=BLOCK-BGP
add address=43.228.131.115 list=BLOCK-BGP
add address=43.230.62.157 list=BLOCK-BGP
add address=43.243.140.198 list=BLOCK-BGP
add address=43.243.172.2 list=BLOCK-BGP
add address=43.243.174.3 list=BLOCK-BGP
add address=43.245.94.242 list=BLOCK-BGP
add address=43.249.224.170 list=BLOCK-BGP
add address=43.249.224.172 list=BLOCK-BGP
add address=43.252.107.54 list=BLOCK-BGP
add address=43.252.174.33 list=BLOCK-BGP
add address=43.252.183.66 list=BLOCK-BGP
add address=43.255.37.9 list=BLOCK-BGP
add address=43.255.37.12 list=BLOCK-BGP
add address=44.206.81.220 list=BLOCK-BGP
add address=44.239.222.162 list=BLOCK-BGP
add address=45.5.119.86 list=BLOCK-BGP
add address=45.5.209.12 list=BLOCK-BGP
add address=45.7.177.196 list=BLOCK-BGP
add address=45.7.205.103 list=BLOCK-BGP
add address=45.9.20.167 list=BLOCK-BGP
add address=45.9.72.181 list=BLOCK-BGP
add address=45.9.74.69 list=BLOCK-BGP
add address=45.9.74.80 list=BLOCK-BGP
add address=45.9.74.90 list=BLOCK-BGP
add address=45.9.74.166 list=BLOCK-BGP
add address=45.9.74.182 list=BLOCK-BGP
add address=45.9.156.169 list=BLOCK-BGP
add address=45.12.253.69 list=BLOCK-BGP
add address=45.15.142.164 list=BLOCK-BGP
add address=45.15.156.16 list=BLOCK-BGP
add address=45.15.156.17 list=BLOCK-BGP
add address=45.15.156.145 list=BLOCK-BGP
add address=45.15.156.159 list=BLOCK-BGP
add address=45.15.156.177 list=BLOCK-BGP
add address=45.15.156.178 list=BLOCK-BGP
add address=45.15.156.208 list=BLOCK-BGP
add address=45.15.156.226 list=BLOCK-BGP
add address=45.15.156.238 list=BLOCK-BGP
add address=45.34.248.78 list=BLOCK-BGP
add address=45.34.248.83 list=BLOCK-BGP
add address=45.35.21.100 list=BLOCK-BGP
add address=45.35.21.110 list=BLOCK-BGP
add address=45.35.22.38 list=BLOCK-BGP
add address=45.41.81.147 list=BLOCK-BGP
add address=45.43.19.91 list=BLOCK-BGP
add address=45.59.112.61 list=BLOCK-BGP
add address=45.61.184.118 list=BLOCK-BGP
add address=45.61.184.133 list=BLOCK-BGP
add address=45.61.188.148 list=BLOCK-BGP
add address=45.64.122.210 list=BLOCK-BGP
add address=45.65.131.128 list=BLOCK-BGP
add address=45.70.0.17 list=BLOCK-BGP
add address=45.70.204.233 list=BLOCK-BGP
add address=45.70.237.162 list=BLOCK-BGP
add address=45.70.237.172 list=BLOCK-BGP
add address=45.87.154.105 list=BLOCK-BGP
add address=45.88.66.207 list=BLOCK-BGP
add address=45.90.57.51 list=BLOCK-BGP
add address=45.90.217.100 list=BLOCK-BGP
add address=45.91.83.176 list=BLOCK-BGP
add address=45.93.20.26 list=BLOCK-BGP
add address=45.93.20.27 list=BLOCK-BGP
add address=45.93.20.181 list=BLOCK-BGP
add address=45.93.20.224 list=BLOCK-BGP
add address=45.95.55.24 list=BLOCK-BGP
add address=45.95.55.185 list=BLOCK-BGP
add address=45.95.55.188 list=BLOCK-BGP
add address=45.95.55.189 list=BLOCK-BGP
add address=45.95.55.218 list=BLOCK-BGP
add address=45.116.165.171 list=BLOCK-BGP
add address=45.116.229.183 list=BLOCK-BGP
add address=45.118.115.99 list=BLOCK-BGP
add address=45.118.115.130 list=BLOCK-BGP
add address=45.122.44.2 list=BLOCK-BGP
add address=45.125.236.14 list=BLOCK-BGP
add address=45.126.182.10 list=BLOCK-BGP
add address=45.126.182.11 list=BLOCK-BGP
add address=45.126.182.12 list=BLOCK-BGP
add address=45.126.228.8 list=BLOCK-BGP
add address=45.127.101.18 list=BLOCK-BGP
add address=45.129.196.63 list=BLOCK-BGP
add address=45.129.196.64 list=BLOCK-BGP
add address=45.129.196.133 list=BLOCK-BGP
add address=45.130.145.51 list=BLOCK-BGP
add address=45.133.247.154 list=BLOCK-BGP
add address=45.133.247.159 list=BLOCK-BGP
add address=45.134.20.66 list=BLOCK-BGP
add address=45.135.118.193 list=BLOCK-BGP
add address=45.135.233.58 list=BLOCK-BGP
add address=45.138.72.98 list=BLOCK-BGP
add address=45.140.170.52 list=BLOCK-BGP
add address=45.141.233.196 list=BLOCK-BGP
add address=45.143.136.51 list=BLOCK-BGP
add address=45.143.136.84 list=BLOCK-BGP
add address=45.143.136.111 list=BLOCK-BGP
add address=45.143.136.113 list=BLOCK-BGP
add address=45.143.137.23 list=BLOCK-BGP
add address=45.143.137.54 list=BLOCK-BGP
add address=45.143.137.131 list=BLOCK-BGP
add address=45.143.137.157 list=BLOCK-BGP
add address=45.143.139.212 list=BLOCK-BGP
add address=45.143.201.238 list=BLOCK-BGP
add address=45.144.28.189 list=BLOCK-BGP
add address=45.145.4.170 list=BLOCK-BGP
add address=45.147.215.134 list=BLOCK-BGP
add address=45.147.230.245 list=BLOCK-BGP
add address=45.148.121.228 list=BLOCK-BGP
add address=45.149.241.168 list=BLOCK-BGP
add address=45.150.34.32 list=BLOCK-BGP
add address=45.150.34.73 list=BLOCK-BGP
add address=45.150.34.138 list=BLOCK-BGP
add address=45.153.160.140 list=BLOCK-BGP
add address=45.153.241.73 list=BLOCK-BGP
add address=45.154.255.147 list=BLOCK-BGP
add address=45.159.189.33 list=BLOCK-BGP
add address=45.159.189.105 list=BLOCK-BGP
add address=45.159.248.213 list=BLOCK-BGP
add address=45.160.221.162 list=BLOCK-BGP
add address=45.167.253.129 list=BLOCK-BGP
add address=45.170.100.10 list=BLOCK-BGP
add address=45.174.87.18 list=BLOCK-BGP
add address=45.175.179.230 list=BLOCK-BGP
add address=45.176.232.124 list=BLOCK-BGP
add address=45.182.189.71 list=BLOCK-BGP
add address=45.182.189.103 list=BLOCK-BGP
add address=45.182.189.228 list=BLOCK-BGP
add address=45.182.189.229 list=BLOCK-BGP
add address=45.184.36.10 list=BLOCK-BGP
add address=45.188.105.52 list=BLOCK-BGP
add address=45.189.112.225 list=BLOCK-BGP
add address=45.192.79.152 list=BLOCK-BGP
add address=45.195.74.197 list=BLOCK-BGP
add address=45.195.74.216 list=BLOCK-BGP
add address=45.195.140.44 list=BLOCK-BGP
add address=45.196.82.124 list=BLOCK-BGP
add address=45.200.223.21 list=BLOCK-BGP
add address=45.200.228.234 list=BLOCK-BGP
add address=45.202.82.89 list=BLOCK-BGP
add address=45.203.116.186 list=BLOCK-BGP
add address=45.204.62.150 list=BLOCK-BGP
add address=45.204.95.19 list=BLOCK-BGP
add address=45.204.95.21 list=BLOCK-BGP
add address=45.204.95.29 list=BLOCK-BGP
add address=45.205.194.237 list=BLOCK-BGP
add address=45.207.110.221 list=BLOCK-BGP
add address=45.227.253.102 list=BLOCK-BGP
add address=45.227.255.190 list=BLOCK-BGP
add address=45.228.96.2 list=BLOCK-BGP
add address=45.229.174.75 list=BLOCK-BGP
add address=45.229.174.77 list=BLOCK-BGP
add address=45.230.200.121 list=BLOCK-BGP
add address=45.248.8.204 list=BLOCK-BGP
add address=45.249.78.193 list=BLOCK-BGP
add address=45.249.79.185 list=BLOCK-BGP
add address=46.3.197.253 list=BLOCK-BGP
add address=46.4.78.162 list=BLOCK-BGP
add address=46.8.33.180 list=BLOCK-BGP
add address=46.8.159.147 list=BLOCK-BGP
add address=46.8.247.3 list=BLOCK-BGP
add address=46.13.11.82 list=BLOCK-BGP
add address=46.35.249.189 list=BLOCK-BGP
add address=46.55.222.11 list=BLOCK-BGP
add address=46.63.81.195 list=BLOCK-BGP
add address=46.98.196.243 list=BLOCK-BGP
add address=46.98.198.10 list=BLOCK-BGP
add address=46.98.251.182 list=BLOCK-BGP
add address=46.99.205.2 list=BLOCK-BGP
add address=46.99.210.63 list=BLOCK-BGP
add address=46.146.214.244 list=BLOCK-BGP
add address=46.148.39.36 list=BLOCK-BGP
add address=46.149.73.193 list=BLOCK-BGP
add address=46.149.194.83 list=BLOCK-BGP
add address=46.150.23.93 list=BLOCK-BGP
add address=46.151.145.4 list=BLOCK-BGP
add address=46.151.182.19 list=BLOCK-BGP
add address=46.151.182.245 list=BLOCK-BGP
add address=46.166.162.96 list=BLOCK-BGP
add address=46.172.75.51 list=BLOCK-BGP
add address=46.173.35.229 list=BLOCK-BGP
add address=46.173.214.156 list=BLOCK-BGP
add address=46.173.215.52 list=BLOCK-BGP
add address=46.173.215.145 list=BLOCK-BGP
add address=46.173.215.167 list=BLOCK-BGP
add address=46.183.220.70 list=BLOCK-BGP
add address=46.183.223.7 list=BLOCK-BGP
add address=46.188.53.61 list=BLOCK-BGP
add address=46.217.247.69 list=BLOCK-BGP
add address=46.219.80.142 list=BLOCK-BGP
add address=46.225.251.206 list=BLOCK-BGP
add address=46.227.37.61 list=BLOCK-BGP
add address=46.243.140.62 list=BLOCK-BGP
add address=46.249.32.181 list=BLOCK-BGP
add address=46.253.39.142 list=BLOCK-BGP
add address=47.236.31.227 list=BLOCK-BGP
add address=47.241.99.110 list=BLOCK-BGP
add address=47.242.253.1 list=BLOCK-BGP
add address=49.156.20.209 list=BLOCK-BGP
add address=49.156.38.126 list=BLOCK-BGP
add address=49.248.32.110 list=BLOCK-BGP
add address=50.2.117.31 list=BLOCK-BGP
add address=50.2.119.154 list=BLOCK-BGP
add address=50.3.95.198 list=BLOCK-BGP
add address=50.3.122.15 list=BLOCK-BGP
add address=50.3.216.132 list=BLOCK-BGP
add address=50.39.191.254 list=BLOCK-BGP
add address=50.53.208.184 list=BLOCK-BGP
add address=50.57.185.72 list=BLOCK-BGP
add address=50.62.186.241 list=BLOCK-BGP
add address=50.117.74.180 list=BLOCK-BGP
add address=50.117.86.45 list=BLOCK-BGP
add address=50.192.49.5 list=BLOCK-BGP
add address=50.193.36.173 list=BLOCK-BGP
add address=50.197.210.138 list=BLOCK-BGP
add address=50.233.42.98 list=BLOCK-BGP
add address=50.235.92.14 list=BLOCK-BGP
add address=50.236.148.246 list=BLOCK-BGP
add address=50.236.148.254 list=BLOCK-BGP
add address=50.236.203.15 list=BLOCK-BGP
add address=50.237.206.138 list=BLOCK-BGP
add address=50.242.122.141 list=BLOCK-BGP
add address=50.246.120.125 list=BLOCK-BGP
add address=50.250.56.129 list=BLOCK-BGP
add address=50.250.75.153 list=BLOCK-BGP
add address=51.15.215.173 list=BLOCK-BGP
add address=51.140.106.206 list=BLOCK-BGP
add address=51.158.172.165 list=BLOCK-BGP
add address=51.211.44.24 list=BLOCK-BGP
add address=51.211.209.141 list=BLOCK-BGP
add address=51.254.182.54 list=BLOCK-BGP
add address=51.254.182.63 list=BLOCK-BGP
add address=51.254.187.177 list=BLOCK-BGP
add address=52.5.179.87 list=BLOCK-BGP
add address=52.49.161.237 list=BLOCK-BGP
add address=52.140.54.230 list=BLOCK-BGP
add address=52.188.147.221 list=BLOCK-BGP
add address=52.199.44.113 list=BLOCK-BGP
add address=52.231.143.69 list=BLOCK-BGP
add address=52.236.80.67 list=BLOCK-BGP
add address=52.250.60.164 list=BLOCK-BGP
add address=58.75.126.235 list=BLOCK-BGP
add address=58.84.31.62 list=BLOCK-BGP
add address=58.218.67.253 list=BLOCK-BGP
add address=58.218.199.202 list=BLOCK-BGP
add address=58.227.42.236 list=BLOCK-BGP
add address=59.36.136.238 list=BLOCK-BGP
add address=59.92.40.60 list=BLOCK-BGP
add address=59.103.190.114 list=BLOCK-BGP
add address=59.152.111.241 list=BLOCK-BGP
add address=59.152.124.128 list=BLOCK-BGP
add address=59.153.121.170 list=BLOCK-BGP
add address=59.153.121.182 list=BLOCK-BGP
add address=59.163.248.170 list=BLOCK-BGP
add address=60.12.214.184 list=BLOCK-BGP
add address=60.13.42.157 list=BLOCK-BGP
add address=60.161.153.36 list=BLOCK-BGP
add address=60.217.64.237 list=BLOCK-BGP
add address=60.247.143.49 list=BLOCK-BGP
add address=61.14.68.33 list=BLOCK-BGP
add address=61.14.228.126 list=BLOCK-BGP
add address=61.19.40.50 list=BLOCK-BGP
add address=61.134.48.51 list=BLOCK-BGP
add address=61.135.30.54 list=BLOCK-BGP
add address=61.141.21.34 list=BLOCK-BGP
add address=61.148.199.206 list=BLOCK-BGP
add address=61.158.219.226 list=BLOCK-BGP
add address=61.177.248.202 list=BLOCK-BGP
add address=61.178.99.43 list=BLOCK-BGP
add address=61.216.185.88 list=BLOCK-BGP
add address=61.247.178.158 list=BLOCK-BGP
add address=62.60.226.20 list=BLOCK-BGP
add address=62.60.226.183 list=BLOCK-BGP
add address=62.60.226.199 list=BLOCK-BGP
add address=62.75.216.137 list=BLOCK-BGP
add address=62.76.74.245 list=BLOCK-BGP
add address=62.76.187.171 list=BLOCK-BGP
add address=62.89.31.164 list=BLOCK-BGP
add address=62.89.31.216 list=BLOCK-BGP
add address=62.109.4.190 list=BLOCK-BGP
add address=62.122.184.58 list=BLOCK-BGP
add address=62.122.184.92 list=BLOCK-BGP
add address=62.122.201.170 list=BLOCK-BGP
add address=62.122.201.246 list=BLOCK-BGP
add address=62.173.139.212 list=BLOCK-BGP
add address=62.183.98.181 list=BLOCK-BGP
add address=62.197.136.176 list=BLOCK-BGP
add address=62.204.41.4 list=BLOCK-BGP
add address=62.204.41.5 list=BLOCK-BGP
add address=62.204.41.47 list=BLOCK-BGP
add address=62.204.41.48 list=BLOCK-BGP
add address=62.204.41.87 list=BLOCK-BGP
add address=62.244.140.12 list=BLOCK-BGP
add address=63.151.9.74 list=BLOCK-BGP
add address=63.251.20.180 list=BLOCK-BGP
add address=64.27.10.80 list=BLOCK-BGP
add address=64.52.169.174 list=BLOCK-BGP
add address=64.89.161.178 list=BLOCK-BGP
add address=65.18.114.254 list=BLOCK-BGP
add address=65.49.67.1 list=BLOCK-BGP
add address=65.186.60.165 list=BLOCK-BGP
add address=65.254.65.129 list=BLOCK-BGP
add address=65.254.75.14 list=BLOCK-BGP
add address=66.39.37.59 list=BLOCK-BGP
add address=66.85.160.195 list=BLOCK-BGP
add address=66.115.182.111 list=BLOCK-BGP
add address=66.135.227.178 list=BLOCK-BGP
add address=66.135.227.181 list=BLOCK-BGP
add address=66.154.111.3 list=BLOCK-BGP
add address=66.248.206.71 list=BLOCK-BGP
add address=67.22.223.9 list=BLOCK-BGP
add address=67.244.66.11 list=BLOCK-BGP
add address=68.64.250.38 list=BLOCK-BGP
add address=69.11.145.106 list=BLOCK-BGP
add address=69.30.232.138 list=BLOCK-BGP
add address=69.65.65.178 list=BLOCK-BGP
add address=69.67.150.36 list=BLOCK-BGP
add address=69.162.253.21 list=BLOCK-BGP
add address=69.194.160.228 list=BLOCK-BGP
add address=69.195.129.70 list=BLOCK-BGP
add address=70.35.213.226 list=BLOCK-BGP
add address=70.90.67.140 list=BLOCK-BGP
add address=71.27.103.52 list=BLOCK-BGP
add address=71.218.117.190 list=BLOCK-BGP
add address=72.11.147.145 list=BLOCK-BGP
add address=72.37.228.134 list=BLOCK-BGP
add address=72.139.68.174 list=BLOCK-BGP
add address=72.212.63.101 list=BLOCK-BGP
add address=74.91.117.64 list=BLOCK-BGP
add address=74.114.232.162 list=BLOCK-BGP
add address=74.124.24.29 list=BLOCK-BGP
add address=74.215.79.240 list=BLOCK-BGP
add address=75.166.25.27 list=BLOCK-BGP
add address=77.30.107.185 list=BLOCK-BGP
add address=77.48.137.3 list=BLOCK-BGP
add address=77.73.131.247 list=BLOCK-BGP
add address=77.73.134.27 list=BLOCK-BGP
add address=77.83.207.69 list=BLOCK-BGP
add address=77.89.204.254 list=BLOCK-BGP
add address=77.89.207.22 list=BLOCK-BGP
add address=77.91.101.140 list=BLOCK-BGP
add address=77.91.124.1 list=BLOCK-BGP
add address=77.91.124.20 list=BLOCK-BGP
add address=77.91.124.207 list=BLOCK-BGP
add address=77.91.124.242 list=BLOCK-BGP
add address=77.105.140.199 list=BLOCK-BGP
add address=77.108.90.3 list=BLOCK-BGP
add address=77.221.147.31 list=BLOCK-BGP
add address=77.222.3.181 list=BLOCK-BGP
add address=77.223.124.210 list=BLOCK-BGP
add address=77.232.36.58 list=BLOCK-BGP
add address=77.232.38.131 list=BLOCK-BGP
add address=77.232.43.117 list=BLOCK-BGP
add address=77.232.43.177 list=BLOCK-BGP
add address=77.232.167.200 list=BLOCK-BGP
add address=77.233.10.37 list=BLOCK-BGP
add address=77.236.196.27 list=BLOCK-BGP
add address=77.236.236.38 list=BLOCK-BGP
add address=77.236.236.44 list=BLOCK-BGP
add address=77.239.105.113 list=BLOCK-BGP
add address=77.243.64.119 list=BLOCK-BGP
add address=77.246.97.5 list=BLOCK-BGP
add address=77.246.100.180 list=BLOCK-BGP
add address=78.38.123.110 list=BLOCK-BGP
add address=78.40.193.235 list=BLOCK-BGP
add address=78.61.76.162 list=BLOCK-BGP
add address=78.83.242.229 list=BLOCK-BGP
add address=78.90.81.184 list=BLOCK-BGP
add address=78.92.254.9 list=BLOCK-BGP
add address=78.92.254.169 list=BLOCK-BGP
add address=78.129.132.239 list=BLOCK-BGP
add address=78.135.85.70 list=BLOCK-BGP
add address=78.154.180.12 list=BLOCK-BGP
add address=78.155.34.63 list=BLOCK-BGP
add address=78.155.42.75 list=BLOCK-BGP
add address=78.155.43.201 list=BLOCK-BGP
add address=78.155.46.20 list=BLOCK-BGP
add address=78.155.58.77 list=BLOCK-BGP
add address=78.155.58.212 list=BLOCK-BGP
add address=78.159.199.217 list=BLOCK-BGP
add address=78.188.119.253 list=BLOCK-BGP
add address=79.102.169.245 list=BLOCK-BGP
add address=79.102.181.143 list=BLOCK-BGP
add address=79.106.34.2 list=BLOCK-BGP
add address=79.106.35.20 list=BLOCK-BGP
add address=79.106.35.139 list=BLOCK-BGP
add address=79.106.35.223 list=BLOCK-BGP
add address=79.106.165.30 list=BLOCK-BGP
add address=79.106.224.231 list=BLOCK-BGP
add address=79.106.246.174 list=BLOCK-BGP
add address=79.110.48.215 list=BLOCK-BGP
add address=79.110.52.138 list=BLOCK-BGP
add address=79.110.52.139 list=BLOCK-BGP
add address=79.110.52.252 list=BLOCK-BGP
add address=79.115.163.102 list=BLOCK-BGP
add address=79.124.62.26 list=BLOCK-BGP
add address=79.133.124.242 list=BLOCK-BGP
add address=79.134.225.93 list=BLOCK-BGP
add address=79.137.199.252 list=BLOCK-BGP
add address=79.137.202.177 list=BLOCK-BGP
add address=79.143.225.152 list=BLOCK-BGP
add address=79.164.171.32 list=BLOCK-BGP
add address=79.165.225.234 list=BLOCK-BGP
add address=79.172.212.216 list=BLOCK-BGP
add address=80.13.0.226 list=BLOCK-BGP
add address=80.54.62.254 list=BLOCK-BGP
add address=80.64.18.63 list=BLOCK-BGP
add address=80.64.19.152 list=BLOCK-BGP
add address=80.64.30.65 list=BLOCK-BGP
add address=80.64.30.111 list=BLOCK-BGP
add address=80.66.64.19 list=BLOCK-BGP
add address=80.66.64.36 list=BLOCK-BGP
add address=80.66.64.169 list=BLOCK-BGP
add address=80.66.75.4 list=BLOCK-BGP
add address=80.66.75.11 list=BLOCK-BGP
add address=80.66.75.12 list=BLOCK-BGP
add address=80.66.75.39 list=BLOCK-BGP
add address=80.66.75.77 list=BLOCK-BGP
add address=80.66.75.254 list=BLOCK-BGP
add address=80.68.76.178 list=BLOCK-BGP
add address=80.70.22.16 list=BLOCK-BGP
add address=80.71.112.50 list=BLOCK-BGP
add address=80.73.87.202 list=BLOCK-BGP
add address=80.76.236.66 list=BLOCK-BGP
add address=80.78.130.106 list=BLOCK-BGP
add address=80.80.164.164 list=BLOCK-BGP
add address=80.81.232.145 list=BLOCK-BGP
add address=80.82.147.1 list=BLOCK-BGP
add address=80.84.176.110 list=BLOCK-BGP
add address=80.89.137.210 list=BLOCK-BGP
add address=80.91.120.38 list=BLOCK-BGP
add address=80.92.181.3 list=BLOCK-BGP
add address=80.92.205.81 list=BLOCK-BGP
add address=80.94.95.103 list=BLOCK-BGP
add address=80.107.16.17 list=BLOCK-BGP
add address=80.123.143.202 list=BLOCK-BGP
add address=80.191.46.60 list=BLOCK-BGP
add address=80.191.169.66 list=BLOCK-BGP
add address=80.191.169.69 list=BLOCK-BGP
add address=80.209.241.4 list=BLOCK-BGP
add address=80.240.250.222 list=BLOCK-BGP
add address=80.241.44.34 list=BLOCK-BGP
add address=81.2.47.181 list=BLOCK-BGP
add address=81.18.49.5 list=BLOCK-BGP
add address=81.19.141.163 list=BLOCK-BGP
add address=81.24.82.69 list=BLOCK-BGP
add address=81.89.69.37 list=BLOCK-BGP
add address=81.163.36.139 list=BLOCK-BGP
add address=81.163.36.210 list=BLOCK-BGP
add address=81.169.140.14 list=BLOCK-BGP
add address=81.219.10.62 list=BLOCK-BGP
add address=81.219.155.193 list=BLOCK-BGP
add address=82.58.200.103 list=BLOCK-BGP
add address=82.76.135.94 list=BLOCK-BGP
add address=82.99.232.18 list=BLOCK-BGP
add address=82.103.70.227 list=BLOCK-BGP
add address=82.114.92.33 list=BLOCK-BGP
add address=82.117.204.174 list=BLOCK-BGP
add address=82.118.22.190 list=BLOCK-BGP
add address=82.137.244.151 list=BLOCK-BGP
add address=82.137.250.18 list=BLOCK-BGP
add address=82.137.250.157 list=BLOCK-BGP
add address=82.142.147.174 list=BLOCK-BGP
add address=82.147.44.130 list=BLOCK-BGP
add address=82.147.118.164 list=BLOCK-BGP
add address=82.165.152.127 list=BLOCK-BGP
add address=82.206.131.62 list=BLOCK-BGP
add address=83.69.125.126 list=BLOCK-BGP
add address=83.97.73.44 list=BLOCK-BGP
add address=83.103.195.183 list=BLOCK-BGP
add address=83.136.179.91 list=BLOCK-BGP
add address=83.168.84.62 list=BLOCK-BGP
add address=83.168.84.82 list=BLOCK-BGP
add address=83.217.11.9 list=BLOCK-BGP
add address=83.217.11.10 list=BLOCK-BGP
add address=83.217.11.36 list=BLOCK-BGP
add address=84.16.234.29 list=BLOCK-BGP
add address=84.17.51.235 list=BLOCK-BGP
add address=84.22.138.150 list=BLOCK-BGP
add address=84.47.226.66 list=BLOCK-BGP
add address=84.54.132.0 list=BLOCK-BGP
add address=84.117.126.4 list=BLOCK-BGP
add address=84.221.212.22 list=BLOCK-BGP
add address=84.236.158.242 list=BLOCK-BGP
add address=84.243.108.186 list=BLOCK-BGP
add address=85.17.164.8 list=BLOCK-BGP
add address=85.21.200.26 list=BLOCK-BGP
add address=85.25.198.20 list=BLOCK-BGP
add address=85.30.215.48 list=BLOCK-BGP
add address=85.30.248.210 list=BLOCK-BGP
add address=85.31.45.22 list=BLOCK-BGP
add address=85.62.5.158 list=BLOCK-BGP
add address=85.105.156.8 list=BLOCK-BGP
add address=85.113.140.196 list=BLOCK-BGP
add address=85.117.56.103 list=BLOCK-BGP
add address=85.159.6.20 list=BLOCK-BGP
add address=85.175.99.105 list=BLOCK-BGP
add address=85.185.152.146 list=BLOCK-BGP
add address=85.193.81.7 list=BLOCK-BGP
add address=85.208.84.41 list=BLOCK-BGP
add address=85.208.84.42 list=BLOCK-BGP
add address=85.209.11.199 list=BLOCK-BGP
add address=85.217.192.39 list=BLOCK-BGP
add address=85.235.184.186 list=BLOCK-BGP
add address=86.34.157.3 list=BLOCK-BGP
add address=86.100.63.127 list=BLOCK-BGP
add address=86.111.144.10 list=BLOCK-BGP
add address=86.120.79.84 list=BLOCK-BGP
add address=86.122.134.195 list=BLOCK-BGP
add address=87.103.174.147 list=BLOCK-BGP
add address=87.120.88.76 list=BLOCK-BGP
add address=87.120.113.235 list=BLOCK-BGP
add address=87.121.47.63 list=BLOCK-BGP
add address=87.121.47.132 list=BLOCK-BGP
add address=87.124.164.13 list=BLOCK-BGP
add address=87.251.64.133 list=BLOCK-BGP
add address=87.251.86.253 list=BLOCK-BGP
add address=88.12.14.233 list=BLOCK-BGP
add address=88.85.82.189 list=BLOCK-BGP
add address=88.85.99.44 list=BLOCK-BGP
add address=88.87.72.134 list=BLOCK-BGP
add address=88.135.42.145 list=BLOCK-BGP
add address=88.151.117.58 list=BLOCK-BGP
add address=88.151.117.223 list=BLOCK-BGP
add address=88.214.27.100 list=BLOCK-BGP
add address=88.214.27.101 list=BLOCK-BGP
add address=88.214.48.64 list=BLOCK-BGP
add address=88.214.48.65 list=BLOCK-BGP
add address=88.214.48.66 list=BLOCK-BGP
add address=88.214.48.111 list=BLOCK-BGP
add address=88.214.50.24 list=BLOCK-BGP
add address=88.214.50.26 list=BLOCK-BGP
add address=88.214.50.27 list=BLOCK-BGP
add address=88.214.207.83 list=BLOCK-BGP
add address=88.214.236.11 list=BLOCK-BGP
add address=88.218.60.230 list=BLOCK-BGP
add address=88.247.165.215 list=BLOCK-BGP
add address=88.248.18.120 list=BLOCK-BGP
add address=88.255.106.27 list=BLOCK-BGP
add address=88.255.132.179 list=BLOCK-BGP
add address=89.17.51.234 list=BLOCK-BGP
add address=89.22.17.62 list=BLOCK-BGP
add address=89.25.23.210 list=BLOCK-BGP
add address=89.35.5.145 list=BLOCK-BGP
add address=89.37.186.216 list=BLOCK-BGP
add address=89.41.106.8 list=BLOCK-BGP
add address=89.43.245.213 list=BLOCK-BGP
add address=89.44.9.243 list=BLOCK-BGP
add address=89.46.24.15 list=BLOCK-BGP
add address=89.46.28.3 list=BLOCK-BGP
add address=89.46.29.238 list=BLOCK-BGP
add address=89.46.31.57 list=BLOCK-BGP
add address=89.105.216.106 list=BLOCK-BGP
add address=89.125.152.228 list=BLOCK-BGP
add address=89.137.17.114 list=BLOCK-BGP
add address=89.163.252.230 list=BLOCK-BGP
add address=89.191.233.253 list=BLOCK-BGP
add address=89.201.145.218 list=BLOCK-BGP
add address=89.215.59.52 list=BLOCK-BGP
add address=89.215.59.77 list=BLOCK-BGP
add address=89.215.59.149 list=BLOCK-BGP
add address=89.215.59.222 list=BLOCK-BGP
add address=89.215.59.237 list=BLOCK-BGP
add address=89.215.60.45 list=BLOCK-BGP
add address=89.215.60.95 list=BLOCK-BGP
add address=89.215.60.209 list=BLOCK-BGP
add address=89.215.60.225 list=BLOCK-BGP
add address=89.215.60.248 list=BLOCK-BGP
add address=89.215.60.249 list=BLOCK-BGP
add address=89.218.5.106 list=BLOCK-BGP
add address=89.248.163.12 list=BLOCK-BGP
add address=89.248.165.84 list=BLOCK-BGP
add address=89.249.65.191 list=BLOCK-BGP
add address=90.148.85.246 list=BLOCK-BGP
add address=90.168.34.174 list=BLOCK-BGP
add address=91.82.41.200 list=BLOCK-BGP
add address=91.92.242.27 list=BLOCK-BGP
add address=91.92.242.225 list=BLOCK-BGP
add address=91.92.253.221 list=BLOCK-BGP
add address=91.98.29.99 list=BLOCK-BGP
add address=91.103.252.249 list=BLOCK-BGP
add address=91.109.176.4 list=BLOCK-BGP
add address=91.109.176.5 list=BLOCK-BGP
add address=91.109.176.6 list=BLOCK-BGP
add address=91.109.176.7 list=BLOCK-BGP
add address=91.109.176.8 list=BLOCK-BGP
add address=91.109.176.9 list=BLOCK-BGP
add address=91.109.176.10 list=BLOCK-BGP
add address=91.109.176.12 list=BLOCK-BGP
add address=91.109.178.2 list=BLOCK-BGP
add address=91.109.178.3 list=BLOCK-BGP
add address=91.109.178.4 list=BLOCK-BGP
add address=91.109.178.5 list=BLOCK-BGP
add address=91.109.178.6 list=BLOCK-BGP
add address=91.109.178.7 list=BLOCK-BGP
add address=91.109.178.8 list=BLOCK-BGP
add address=91.109.178.9 list=BLOCK-BGP
add address=91.109.178.10 list=BLOCK-BGP
add address=91.109.178.13 list=BLOCK-BGP
add address=91.109.178.14 list=BLOCK-BGP
add address=91.109.178.15 list=BLOCK-BGP
add address=91.109.180.2 list=BLOCK-BGP
add address=91.109.180.3 list=BLOCK-BGP
add address=91.109.180.4 list=BLOCK-BGP
add address=91.109.180.5 list=BLOCK-BGP
add address=91.109.180.6 list=BLOCK-BGP
add address=91.109.180.7 list=BLOCK-BGP
add address=91.109.180.8 list=BLOCK-BGP
add address=91.109.180.9 list=BLOCK-BGP
add address=91.109.180.10 list=BLOCK-BGP
add address=91.109.182.3 list=BLOCK-BGP
add address=91.109.182.4 list=BLOCK-BGP
add address=91.109.182.5 list=BLOCK-BGP
add address=91.109.182.6 list=BLOCK-BGP
add address=91.109.182.7 list=BLOCK-BGP
add address=91.109.182.8 list=BLOCK-BGP
add address=91.109.182.9 list=BLOCK-BGP
add address=91.109.182.10 list=BLOCK-BGP
add address=91.109.184.3 list=BLOCK-BGP
add address=91.109.184.4 list=BLOCK-BGP
add address=91.109.184.5 list=BLOCK-BGP
add address=91.109.184.6 list=BLOCK-BGP
add address=91.109.184.7 list=BLOCK-BGP
add address=91.109.184.8 list=BLOCK-BGP
add address=91.109.184.11 list=BLOCK-BGP
add address=91.109.184.12 list=BLOCK-BGP
add address=91.109.186.2 list=BLOCK-BGP
add address=91.109.186.3 list=BLOCK-BGP
add address=91.109.186.4 list=BLOCK-BGP
add address=91.109.186.5 list=BLOCK-BGP
add address=91.109.186.6 list=BLOCK-BGP
add address=91.109.186.7 list=BLOCK-BGP
add address=91.109.186.8 list=BLOCK-BGP
add address=91.109.186.9 list=BLOCK-BGP
add address=91.109.186.10 list=BLOCK-BGP
add address=91.109.186.11 list=BLOCK-BGP
add address=91.109.186.13 list=BLOCK-BGP
add address=91.109.188.2 list=BLOCK-BGP
add address=91.109.188.3 list=BLOCK-BGP
add address=91.109.188.4 list=BLOCK-BGP
add address=91.109.188.7 list=BLOCK-BGP
add address=91.109.188.8 list=BLOCK-BGP
add address=91.109.188.9 list=BLOCK-BGP
add address=91.109.188.10 list=BLOCK-BGP
add address=91.109.188.11 list=BLOCK-BGP
add address=91.109.188.12 list=BLOCK-BGP
add address=91.109.188.13 list=BLOCK-BGP
add address=91.109.188.15 list=BLOCK-BGP
add address=91.109.190.2 list=BLOCK-BGP
add address=91.109.190.3 list=BLOCK-BGP
add address=91.109.190.4 list=BLOCK-BGP
add address=91.109.190.5 list=BLOCK-BGP
add address=91.109.190.6 list=BLOCK-BGP
add address=91.109.190.7 list=BLOCK-BGP
add address=91.109.190.9 list=BLOCK-BGP
add address=91.109.190.11 list=BLOCK-BGP
add address=91.109.190.12 list=BLOCK-BGP
add address=91.109.190.13 list=BLOCK-BGP
add address=91.139.196.113 list=BLOCK-BGP
add address=91.142.72.10 list=BLOCK-BGP
add address=91.142.78.129 list=BLOCK-BGP
add address=91.142.174.224 list=BLOCK-BGP
add address=91.151.89.106 list=BLOCK-BGP
add address=91.151.94.60 list=BLOCK-BGP
add address=91.181.235.31 list=BLOCK-BGP
add address=91.191.184.158 list=BLOCK-BGP
add address=91.192.10.70 list=BLOCK-BGP
add address=91.192.103.43 list=BLOCK-BGP
add address=91.193.125.123 list=BLOCK-BGP
add address=91.193.130.172 list=BLOCK-BGP
add address=91.200.41.42 list=BLOCK-BGP
add address=91.200.41.46 list=BLOCK-BGP
add address=91.203.5.162 list=BLOCK-BGP
add address=91.203.114.71 list=BLOCK-BGP
add address=91.203.145.250 list=BLOCK-BGP
add address=91.203.192.78 list=BLOCK-BGP
add address=91.203.192.212 list=BLOCK-BGP
add address=91.203.193.117 list=BLOCK-BGP
add address=91.203.224.177 list=BLOCK-BGP
add address=91.205.128.233 list=BLOCK-BGP
add address=91.205.241.86 list=BLOCK-BGP
add address=91.206.148.243 list=BLOCK-BGP
add address=91.208.245.32 list=BLOCK-BGP
add address=91.209.11.132 list=BLOCK-BGP
add address=91.210.47.85 list=BLOCK-BGP
add address=91.213.119.246 list=BLOCK-BGP
add address=91.214.124.143 list=BLOCK-BGP
add address=91.219.29.48 list=BLOCK-BGP
add address=91.219.236.97 list=BLOCK-BGP
add address=91.219.236.103 list=BLOCK-BGP
add address=91.219.236.202 list=BLOCK-BGP
add address=91.219.236.207 list=BLOCK-BGP
add address=91.221.240.20 list=BLOCK-BGP
add address=91.225.170.25 list=BLOCK-BGP
add address=91.225.197.197 list=BLOCK-BGP
add address=91.226.5.245 list=BLOCK-BGP
add address=91.228.239.216 list=BLOCK-BGP
add address=91.230.138.11 list=BLOCK-BGP
add address=91.230.199.174 list=BLOCK-BGP
add address=91.231.222.111 list=BLOCK-BGP
add address=91.231.222.112 list=BLOCK-BGP
add address=91.233.250.106 list=BLOCK-BGP
add address=91.235.129.150 list=BLOCK-BGP
add address=91.237.161.211 list=BLOCK-BGP
add address=91.239.53.29 list=BLOCK-BGP
add address=91.242.213.247 list=BLOCK-BGP
add address=91.243.33.3 list=BLOCK-BGP
add address=92.38.169.193 list=BLOCK-BGP
add address=92.38.176.109 list=BLOCK-BGP
add address=92.38.176.130 list=BLOCK-BGP
add address=92.51.73.14 list=BLOCK-BGP
add address=92.84.56.10 list=BLOCK-BGP
add address=92.118.36.199 list=BLOCK-BGP
add address=92.118.36.213 list=BLOCK-BGP
add address=92.247.31.37 list=BLOCK-BGP
add address=92.247.125.169 list=BLOCK-BGP
add address=92.247.127.161 list=BLOCK-BGP
add address=92.247.142.182 list=BLOCK-BGP
add address=92.249.122.108 list=BLOCK-BGP
add address=92.255.57.115 list=BLOCK-BGP
add address=92.255.85.15 list=BLOCK-BGP
add address=92.255.85.34 list=BLOCK-BGP
add address=92.255.85.36 list=BLOCK-BGP
add address=92.255.164.166 list=BLOCK-BGP
add address=93.61.50.221 list=BLOCK-BGP
add address=93.87.75.118 list=BLOCK-BGP
add address=93.99.13.46 list=BLOCK-BGP
add address=93.112.197.84 list=BLOCK-BGP
add address=93.125.114.53 list=BLOCK-BGP
add address=93.158.228.230 list=BLOCK-BGP
add address=93.167.67.69 list=BLOCK-BGP
add address=94.49.5.14 list=BLOCK-BGP
add address=94.49.16.130 list=BLOCK-BGP
add address=94.49.16.254 list=BLOCK-BGP
add address=94.49.20.63 list=BLOCK-BGP
add address=94.49.27.224 list=BLOCK-BGP
add address=94.49.36.0 list=BLOCK-BGP
add address=94.49.36.119 list=BLOCK-BGP
add address=94.49.37.13 list=BLOCK-BGP
add address=94.49.43.21 list=BLOCK-BGP
add address=94.66.86.165 list=BLOCK-BGP
add address=94.72.158.129 list=BLOCK-BGP
add address=94.99.180.139 list=BLOCK-BGP
add address=94.112.15.192 list=BLOCK-BGP
add address=94.131.104.19 list=BLOCK-BGP
add address=94.131.105.161 list=BLOCK-BGP
add address=94.131.107.176 list=BLOCK-BGP
add address=94.140.8.113 list=BLOCK-BGP
add address=94.142.138.10 list=BLOCK-BGP
add address=94.142.138.31 list=BLOCK-BGP
add address=94.142.138.32 list=BLOCK-BGP
add address=94.142.138.114 list=BLOCK-BGP
add address=94.142.138.133 list=BLOCK-BGP
add address=94.142.138.156 list=BLOCK-BGP
add address=94.142.138.174 list=BLOCK-BGP
add address=94.142.138.175 list=BLOCK-BGP
add address=94.142.138.208 list=BLOCK-BGP
add address=94.142.138.247 list=BLOCK-BGP
add address=94.154.35.25 list=BLOCK-BGP
add address=94.154.35.238 list=BLOCK-BGP
add address=94.156.71.110 list=BLOCK-BGP
add address=94.156.167.223 list=BLOCK-BGP
add address=94.156.177.33 list=BLOCK-BGP
add address=94.156.177.95 list=BLOCK-BGP
add address=94.156.177.220 list=BLOCK-BGP
add address=94.159.6.254 list=BLOCK-BGP
add address=94.228.112.152 list=BLOCK-BGP
add address=94.228.125.34 list=BLOCK-BGP
add address=94.247.241.70 list=BLOCK-BGP
add address=94.253.15.25 list=BLOCK-BGP
add address=95.0.206.62 list=BLOCK-BGP
add address=95.65.124.252 list=BLOCK-BGP
add address=95.71.125.50 list=BLOCK-BGP
add address=95.79.112.74 list=BLOCK-BGP
add address=95.82.56.191 list=BLOCK-BGP
add address=95.137.240.30 list=BLOCK-BGP
add address=95.140.27.135 list=BLOCK-BGP
add address=95.141.41.12 list=BLOCK-BGP
add address=95.143.8.182 list=BLOCK-BGP
add address=95.154.104.147 list=BLOCK-BGP
add address=95.156.125.190 list=BLOCK-BGP
add address=95.158.63.46 list=BLOCK-BGP
add address=95.164.23.2 list=BLOCK-BGP
add address=95.168.96.42 list=BLOCK-BGP
add address=95.170.201.34 list=BLOCK-BGP
add address=95.172.44.186 list=BLOCK-BGP
add address=95.181.152.139 list=BLOCK-BGP
add address=95.181.152.177 list=BLOCK-BGP
add address=95.182.101.196 list=BLOCK-BGP
add address=95.213.205.82 list=BLOCK-BGP
add address=95.213.205.83 list=BLOCK-BGP
add address=95.214.27.98 list=BLOCK-BGP
add address=96.9.66.187 list=BLOCK-BGP
add address=96.9.77.71 list=BLOCK-BGP
add address=96.9.79.233 list=BLOCK-BGP
add address=96.9.86.70 list=BLOCK-BGP
add address=96.43.105.68 list=BLOCK-BGP
add address=96.45.171.120 list=BLOCK-BGP
add address=96.47.0.166 list=BLOCK-BGP
add address=97.118.163.83 list=BLOCK-BGP
add address=97.118.199.31 list=BLOCK-BGP
add address=98.126.3.148 list=BLOCK-BGP
add address=98.126.6.211 list=BLOCK-BGP
add address=98.162.25.23 list=BLOCK-BGP
add address=98.162.96.41 list=BLOCK-BGP
add address=98.193.185.111 list=BLOCK-BGP
add address=98.194.172.64 list=BLOCK-BGP
add address=98.201.26.161 list=BLOCK-BGP
add address=98.202.107.151 list=BLOCK-BGP
add address=98.206.0.42 list=BLOCK-BGP
add address=98.206.20.88 list=BLOCK-BGP
add address=98.210.111.207 list=BLOCK-BGP
add address=98.211.62.169 list=BLOCK-BGP
add address=98.216.3.48 list=BLOCK-BGP
add address=98.216.91.216 list=BLOCK-BGP
add address=98.223.204.15 list=BLOCK-BGP
add address=98.228.131.188 list=BLOCK-BGP
add address=98.230.56.246 list=BLOCK-BGP
add address=98.231.8.76 list=BLOCK-BGP
add address=99.47.222.148 list=BLOCK-BGP
add address=100.38.10.188 list=BLOCK-BGP
add address=100.43.138.107 list=BLOCK-BGP
add address=100.43.154.140 list=BLOCK-BGP
add address=101.51.105.41 list=BLOCK-BGP
add address=101.51.121.29 list=BLOCK-BGP
add address=101.51.139.179 list=BLOCK-BGP
add address=101.51.141.2 list=BLOCK-BGP
add address=101.228.77.198 list=BLOCK-BGP
add address=101.255.54.188 list=BLOCK-BGP
add address=101.255.117.2 list=BLOCK-BGP
add address=101.255.119.42 list=BLOCK-BGP
add address=101.255.125.57 list=BLOCK-BGP
add address=101.255.140.101 list=BLOCK-BGP
add address=102.38.50.65 list=BLOCK-BGP
add address=102.68.135.21 list=BLOCK-BGP
add address=102.68.135.129 list=BLOCK-BGP
add address=102.128.173.1 list=BLOCK-BGP
add address=102.130.112.157 list=BLOCK-BGP
add address=102.134.17.14 list=BLOCK-BGP
add address=102.134.127.15 list=BLOCK-BGP
add address=102.141.197.17 list=BLOCK-BGP
add address=102.176.179.26 list=BLOCK-BGP
add address=102.177.161.1 list=BLOCK-BGP
add address=102.215.196.206 list=BLOCK-BGP
add address=102.219.33.118 list=BLOCK-BGP
add address=102.219.33.129 list=BLOCK-BGP
add address=102.219.77.243 list=BLOCK-BGP
add address=102.244.120.10 list=BLOCK-BGP
add address=103.1.184.238 list=BLOCK-BGP
add address=103.4.179.186 list=BLOCK-BGP
add address=103.5.127.132 list=BLOCK-BGP
add address=103.8.26.103 list=BLOCK-BGP
add address=103.8.194.2 list=BLOCK-BGP
add address=103.8.194.6 list=BLOCK-BGP
add address=103.8.221.125 list=BLOCK-BGP
add address=103.9.76.211 list=BLOCK-BGP
add address=103.9.113.90 list=BLOCK-BGP
add address=103.10.22.234 list=BLOCK-BGP
add address=103.10.54.81 list=BLOCK-BGP
add address=103.10.56.190 list=BLOCK-BGP
add address=103.10.59.73 list=BLOCK-BGP
add address=103.10.133.81 list=BLOCK-BGP
add address=103.11.106.48 list=BLOCK-BGP
add address=103.12.150.254 list=BLOCK-BGP
add address=103.12.151.6 list=BLOCK-BGP
add address=103.12.246.105 list=BLOCK-BGP
add address=103.15.60.21 list=BLOCK-BGP
add address=103.15.140.177 list=BLOCK-BGP
add address=103.17.213.102 list=BLOCK-BGP
add address=103.20.193.166 list=BLOCK-BGP
add address=103.21.40.35 list=BLOCK-BGP
add address=103.23.101.97 list=BLOCK-BGP
add address=103.24.20.30 list=BLOCK-BGP
add address=103.24.93.139 list=BLOCK-BGP
add address=103.24.93.140 list=BLOCK-BGP
add address=103.24.93.142 list=BLOCK-BGP
add address=103.24.93.143 list=BLOCK-BGP
add address=103.25.61.27 list=BLOCK-BGP
add address=103.31.157.206 list=BLOCK-BGP
add address=103.35.108.145 list=BLOCK-BGP
add address=103.35.111.101 list=BLOCK-BGP
add address=103.36.11.174 list=BLOCK-BGP
add address=103.37.82.38 list=BLOCK-BGP
add address=103.37.235.32 list=BLOCK-BGP
add address=103.39.16.169 list=BLOCK-BGP
add address=103.44.18.248 list=BLOCK-BGP
add address=103.45.99.223 list=BLOCK-BGP
add address=103.46.233.186 list=BLOCK-BGP
add address=103.47.93.214 list=BLOCK-BGP
add address=103.47.93.238 list=BLOCK-BGP
add address=103.47.216.19 list=BLOCK-BGP
add address=103.47.218.76 list=BLOCK-BGP
add address=103.48.68.37 list=BLOCK-BGP
add address=103.49.242.193 list=BLOCK-BGP
add address=103.53.76.82 list=BLOCK-BGP
add address=103.58.75.24 list=BLOCK-BGP
add address=103.59.203.229 list=BLOCK-BGP
add address=103.60.181.210 list=BLOCK-BGP
add address=103.60.214.18 list=BLOCK-BGP
add address=103.61.198.234 list=BLOCK-BGP
add address=103.62.52.150 list=BLOCK-BGP
add address=103.66.233.153 list=BLOCK-BGP
add address=103.66.233.185 list=BLOCK-BGP
add address=103.67.16.6 list=BLOCK-BGP
add address=103.68.0.242 list=BLOCK-BGP
add address=103.68.35.166 list=BLOCK-BGP
add address=103.69.20.38 list=BLOCK-BGP
add address=103.69.20.99 list=BLOCK-BGP
add address=103.69.36.38 list=BLOCK-BGP
add address=103.70.159.140 list=BLOCK-BGP
add address=103.70.204.65 list=BLOCK-BGP
add address=103.71.154.59 list=BLOCK-BGP
add address=103.75.148.203 list=BLOCK-BGP
add address=103.75.201.2 list=BLOCK-BGP
add address=103.75.201.4 list=BLOCK-BGP
add address=103.76.20.155 list=BLOCK-BGP
add address=103.76.24.29 list=BLOCK-BGP
add address=103.76.172.230 list=BLOCK-BGP
add address=103.76.190.1 list=BLOCK-BGP
add address=103.76.190.81 list=BLOCK-BGP
add address=103.76.190.209 list=BLOCK-BGP
add address=103.76.253.66 list=BLOCK-BGP
add address=103.77.192.219 list=BLOCK-BGP
add address=103.79.96.181 list=BLOCK-BGP
add address=103.80.210.33 list=BLOCK-BGP
add address=103.80.210.174 list=BLOCK-BGP
add address=103.81.114.182 list=BLOCK-BGP
add address=103.81.214.254 list=BLOCK-BGP
add address=103.83.174.95 list=BLOCK-BGP
add address=103.84.178.2 list=BLOCK-BGP
add address=103.85.67.94 list=BLOCK-BGP
add address=103.85.122.20 list=BLOCK-BGP
add address=103.87.24.34 list=BLOCK-BGP
add address=103.88.126.170 list=BLOCK-BGP
add address=103.88.234.58 list=BLOCK-BGP
add address=103.91.128.182 list=BLOCK-BGP
add address=103.92.212.242 list=BLOCK-BGP
add address=103.94.7.250 list=BLOCK-BGP
add address=103.95.97.50 list=BLOCK-BGP
add address=103.95.97.54 list=BLOCK-BGP
add address=103.96.131.29 list=BLOCK-BGP
add address=103.97.3.208 list=BLOCK-BGP
add address=103.100.156.117 list=BLOCK-BGP
add address=103.100.156.121 list=BLOCK-BGP
add address=103.102.14.185 list=BLOCK-BGP
add address=103.102.141.56 list=BLOCK-BGP
add address=103.102.142.184 list=BLOCK-BGP
add address=103.103.88.162 list=BLOCK-BGP
add address=103.103.143.63 list=BLOCK-BGP
add address=103.104.185.102 list=BLOCK-BGP
add address=103.104.215.234 list=BLOCK-BGP
add address=103.105.40.70 list=BLOCK-BGP
add address=103.105.76.21 list=BLOCK-BGP
add address=103.105.236.153 list=BLOCK-BGP
add address=103.105.237.254 list=BLOCK-BGP
add address=103.106.32.105 list=BLOCK-BGP
add address=103.106.32.217 list=BLOCK-BGP
add address=103.106.32.234 list=BLOCK-BGP
add address=103.106.35.41 list=BLOCK-BGP
add address=103.106.35.230 list=BLOCK-BGP
add address=103.106.219.222 list=BLOCK-BGP
add address=103.107.68.13 list=BLOCK-BGP
add address=103.107.68.149 list=BLOCK-BGP
add address=103.107.92.209 list=BLOCK-BGP
add address=103.107.92.225 list=BLOCK-BGP
add address=103.107.94.185 list=BLOCK-BGP
add address=103.109.56.209 list=BLOCK-BGP
add address=103.109.57.42 list=BLOCK-BGP
add address=103.109.168.36 list=BLOCK-BGP
add address=103.109.182.193 list=BLOCK-BGP
add address=103.109.196.49 list=BLOCK-BGP
add address=103.110.59.3 list=BLOCK-BGP
add address=103.110.62.112 list=BLOCK-BGP
add address=103.110.109.17 list=BLOCK-BGP
add address=103.110.109.65 list=BLOCK-BGP
add address=103.111.55.210 list=BLOCK-BGP
add address=103.111.160.41 list=BLOCK-BGP
add address=103.112.60.33 list=BLOCK-BGP
add address=103.112.61.241 list=BLOCK-BGP
add address=103.113.106.227 list=BLOCK-BGP
add address=103.114.10.250 list=BLOCK-BGP
add address=103.114.11.226 list=BLOCK-BGP
add address=103.114.35.5 list=BLOCK-BGP
add address=103.114.35.31 list=BLOCK-BGP
add address=103.114.96.93 list=BLOCK-BGP
add address=103.114.97.74 list=BLOCK-BGP
add address=103.114.98.217 list=BLOCK-BGP
add address=103.114.104.136 list=BLOCK-BGP
add address=103.114.107.28 list=BLOCK-BGP
add address=103.115.119.254 list=BLOCK-BGP
add address=103.115.255.65 list=BLOCK-BGP
add address=103.115.255.102 list=BLOCK-BGP
add address=103.115.255.141 list=BLOCK-BGP
add address=103.115.255.161 list=BLOCK-BGP
add address=103.116.202.241 list=BLOCK-BGP
add address=103.116.203.242 list=BLOCK-BGP
add address=103.116.203.244 list=BLOCK-BGP
add address=103.116.203.245 list=BLOCK-BGP
add address=103.117.108.97 list=BLOCK-BGP
add address=103.117.108.129 list=BLOCK-BGP
add address=103.117.108.169 list=BLOCK-BGP
add address=103.119.55.232 list=BLOCK-BGP
add address=103.120.135.33 list=BLOCK-BGP
add address=103.121.41.165 list=BLOCK-BGP
add address=103.121.62.2 list=BLOCK-BGP
add address=103.121.62.14 list=BLOCK-BGP
add address=103.121.215.34 list=BLOCK-BGP
add address=103.122.32.10 list=BLOCK-BGP
add address=103.122.66.184 list=BLOCK-BGP
add address=103.122.202.2 list=BLOCK-BGP
add address=103.122.244.7 list=BLOCK-BGP
add address=103.122.244.173 list=BLOCK-BGP
add address=103.123.170.191 list=BLOCK-BGP
add address=103.123.234.106 list=BLOCK-BGP
add address=103.123.250.179 list=BLOCK-BGP
add address=103.124.86.1 list=BLOCK-BGP
add address=103.124.87.1 list=BLOCK-BGP
add address=103.124.136.77 list=BLOCK-BGP
add address=103.124.137.158 list=BLOCK-BGP
add address=103.125.117.202 list=BLOCK-BGP
add address=103.127.1.130 list=BLOCK-BGP
add address=103.127.21.45 list=BLOCK-BGP
add address=103.127.63.57 list=BLOCK-BGP
add address=103.130.70.209 list=BLOCK-BGP
add address=103.130.70.226 list=BLOCK-BGP
add address=103.130.141.98 list=BLOCK-BGP
add address=103.131.189.143 list=BLOCK-BGP
add address=103.133.37.77 list=BLOCK-BGP
add address=103.133.82.125 list=BLOCK-BGP
add address=103.133.111.149 list=BLOCK-BGP
add address=103.134.18.209 list=BLOCK-BGP
add address=103.134.98.17 list=BLOCK-BGP
add address=103.134.98.65 list=BLOCK-BGP
add address=103.134.202.26 list=BLOCK-BGP
add address=103.134.214.130 list=BLOCK-BGP
add address=103.134.239.210 list=BLOCK-BGP
add address=103.135.174.14 list=BLOCK-BGP
add address=103.135.174.130 list=BLOCK-BGP
add address=103.135.174.132 list=BLOCK-BGP
add address=103.138.27.250 list=BLOCK-BGP
add address=103.138.41.132 list=BLOCK-BGP
add address=103.138.212.218 list=BLOCK-BGP
add address=103.138.212.242 list=BLOCK-BGP
add address=103.139.242.210 list=BLOCK-BGP
add address=103.141.138.110 list=BLOCK-BGP
add address=103.143.84.72 list=BLOCK-BGP
add address=103.143.196.44 list=BLOCK-BGP
add address=103.143.196.50 list=BLOCK-BGP
add address=103.144.161.104 list=BLOCK-BGP
add address=103.145.45.6 list=BLOCK-BGP
add address=103.145.45.10 list=BLOCK-BGP
add address=103.145.45.57 list=BLOCK-BGP
add address=103.145.57.50 list=BLOCK-BGP
add address=103.145.57.109 list=BLOCK-BGP
add address=103.145.87.110 list=BLOCK-BGP
add address=103.146.170.193 list=BLOCK-BGP
add address=103.146.182.54 list=BLOCK-BGP
add address=103.146.222.2 list=BLOCK-BGP
add address=103.147.77.66 list=BLOCK-BGP
add address=103.147.119.3 list=BLOCK-BGP
add address=103.147.184.73 list=BLOCK-BGP
add address=103.148.39.38 list=BLOCK-BGP
add address=103.148.39.50 list=BLOCK-BGP
add address=103.149.137.124 list=BLOCK-BGP
add address=103.149.137.138 list=BLOCK-BGP
add address=103.149.137.192 list=BLOCK-BGP
add address=103.151.123.194 list=BLOCK-BGP
add address=103.153.76.164 list=BLOCK-BGP
add address=103.153.232.241 list=BLOCK-BGP
add address=103.156.14.46 list=BLOCK-BGP
add address=103.158.190.58 list=BLOCK-BGP
add address=103.159.46.2 list=BLOCK-BGP
add address=103.159.47.34 list=BLOCK-BGP
add address=103.164.116.170 list=BLOCK-BGP
add address=103.166.10.10 list=BLOCK-BGP
add address=103.167.236.74 list=BLOCK-BGP
add address=103.169.90.205 list=BLOCK-BGP
add address=103.186.215.201 list=BLOCK-BGP
add address=103.192.156.171 list=BLOCK-BGP
add address=103.194.192.29 list=BLOCK-BGP
add address=103.194.242.254 list=BLOCK-BGP
add address=103.199.97.9 list=BLOCK-BGP
add address=103.199.159.217 list=BLOCK-BGP
add address=103.200.37.31 list=BLOCK-BGP
add address=103.205.128.7 list=BLOCK-BGP
add address=103.205.130.59 list=BLOCK-BGP
add address=103.207.38.165 list=BLOCK-BGP
add address=103.207.96.21 list=BLOCK-BGP
add address=103.210.236.189 list=BLOCK-BGP
add address=103.212.92.201 list=BLOCK-BGP
add address=103.216.216.29 list=BLOCK-BGP
add address=103.217.213.145 list=BLOCK-BGP
add address=103.219.39.78 list=BLOCK-BGP
add address=103.221.253.242 list=BLOCK-BGP
add address=103.221.254.102 list=BLOCK-BGP
add address=103.221.254.125 list=BLOCK-BGP
add address=103.225.89.54 list=BLOCK-BGP
add address=103.226.143.86 list=BLOCK-BGP
add address=103.226.143.254 list=BLOCK-BGP
add address=103.226.154.43 list=BLOCK-BGP
add address=103.226.154.58 list=BLOCK-BGP
add address=103.226.154.59 list=BLOCK-BGP
add address=103.226.154.74 list=BLOCK-BGP
add address=103.226.154.76 list=BLOCK-BGP
add address=103.226.154.77 list=BLOCK-BGP
add address=103.226.154.78 list=BLOCK-BGP
add address=103.226.154.119 list=BLOCK-BGP
add address=103.232.64.226 list=BLOCK-BGP
add address=103.235.66.198 list=BLOCK-BGP
add address=103.241.227.98 list=BLOCK-BGP
add address=103.243.46.6 list=BLOCK-BGP
add address=103.243.81.252 list=BLOCK-BGP
add address=103.244.30.2 list=BLOCK-BGP
add address=103.245.205.30 list=BLOCK-BGP
add address=103.250.68.66 list=BLOCK-BGP
add address=103.251.214.167 list=BLOCK-BGP
add address=103.251.223.13 list=BLOCK-BGP
add address=103.253.154.155 list=BLOCK-BGP
add address=104.16.200.196 list=BLOCK-BGP
add address=104.140.234.232 list=BLOCK-BGP
add address=104.143.83.241 list=BLOCK-BGP
add address=104.149.58.21 list=BLOCK-BGP
add address=104.149.58.39 list=BLOCK-BGP
add address=104.149.58.60 list=BLOCK-BGP
add address=104.149.236.2 list=BLOCK-BGP
add address=104.155.149.103 list=BLOCK-BGP
add address=104.164.86.34 list=BLOCK-BGP
add address=104.165.27.243 list=BLOCK-BGP
add address=104.167.67.42 list=BLOCK-BGP
add address=104.192.202.11 list=BLOCK-BGP
add address=104.194.255.36 list=BLOCK-BGP
add address=104.206.21.63 list=BLOCK-BGP
add address=104.208.69.134 list=BLOCK-BGP
add address=104.217.8.100 list=BLOCK-BGP
add address=104.217.42.40 list=BLOCK-BGP
add address=104.221.170.113 list=BLOCK-BGP
add address=104.223.34.198 list=BLOCK-BGP
add address=104.223.186.143 list=BLOCK-BGP
add address=104.223.231.238 list=BLOCK-BGP
add address=104.225.129.102 list=BLOCK-BGP
add address=104.225.142.116 list=BLOCK-BGP
add address=104.234.193.123 list=BLOCK-BGP
add address=104.237.252.65 list=BLOCK-BGP
add address=104.243.37.4 list=BLOCK-BGP
add address=104.244.79.6 list=BLOCK-BGP
add address=104.250.191.110 list=BLOCK-BGP
add address=104.251.214.46 list=BLOCK-BGP
add address=104.252.48.192 list=BLOCK-BGP
add address=104.252.75.5 list=BLOCK-BGP
add address=104.252.170.46 list=BLOCK-BGP
add address=105.29.95.34 list=BLOCK-BGP
add address=105.154.81.174 list=BLOCK-BGP
add address=105.247.148.210 list=BLOCK-BGP
add address=106.12.192.231 list=BLOCK-BGP
add address=106.37.177.251 list=BLOCK-BGP
add address=106.45.221.168 list=BLOCK-BGP
add address=106.51.2.56 list=BLOCK-BGP
add address=106.120.108.163 list=BLOCK-BGP
add address=106.186.31.191 list=BLOCK-BGP
add address=106.241.4.103 list=BLOCK-BGP
add address=106.243.14.107 list=BLOCK-BGP
add address=106.245.183.58 list=BLOCK-BGP
add address=107.148.27.117 list=BLOCK-BGP
add address=107.148.213.26 list=BLOCK-BGP
add address=107.148.223.82 list=BLOCK-BGP
add address=107.149.178.150 list=BLOCK-BGP
add address=107.149.178.170 list=BLOCK-BGP
add address=107.149.220.113 list=BLOCK-BGP
add address=107.149.230.18 list=BLOCK-BGP
add address=107.160.235.134 list=BLOCK-BGP
add address=107.160.235.137 list=BLOCK-BGP
add address=107.160.235.138 list=BLOCK-BGP
add address=107.160.235.151 list=BLOCK-BGP
add address=107.160.235.185 list=BLOCK-BGP
add address=107.163.123.163 list=BLOCK-BGP
add address=107.163.146.16 list=BLOCK-BGP
add address=107.170.20.33 list=BLOCK-BGP
add address=107.174.14.125 list=BLOCK-BGP
add address=108.62.118.232 list=BLOCK-BGP
add address=108.62.197.59 list=BLOCK-BGP
add address=108.62.211.158 list=BLOCK-BGP
add address=108.158.172.117 list=BLOCK-BGP
add address=108.170.12.14 list=BLOCK-BGP
add address=108.178.59.26 list=BLOCK-BGP
add address=108.179.217.51 list=BLOCK-BGP
add address=109.69.4.239 list=BLOCK-BGP
add address=109.69.161.131 list=BLOCK-BGP
add address=109.73.180.67 list=BLOCK-BGP
add address=109.73.186.2 list=BLOCK-BGP
add address=109.75.34.152 list=BLOCK-BGP
add address=109.86.219.4 list=BLOCK-BGP
add address=109.86.225.146 list=BLOCK-BGP
add address=109.86.244.225 list=BLOCK-BGP
add address=109.87.143.67 list=BLOCK-BGP
add address=109.94.182.9 list=BLOCK-BGP
add address=109.102.254.170 list=BLOCK-BGP
add address=109.104.164.105 list=BLOCK-BGP
add address=109.107.161.150 list=BLOCK-BGP
add address=109.121.161.192 list=BLOCK-BGP
add address=109.122.87.33 list=BLOCK-BGP
add address=109.122.192.97 list=BLOCK-BGP
add address=109.127.47.5 list=BLOCK-BGP
add address=109.160.55.202 list=BLOCK-BGP
add address=109.167.200.84 list=BLOCK-BGP
add address=109.167.205.87 list=BLOCK-BGP
add address=109.169.29.166 list=BLOCK-BGP
add address=109.175.6.192 list=BLOCK-BGP
add address=109.175.8.38 list=BLOCK-BGP
add address=109.175.8.45 list=BLOCK-BGP
add address=109.175.8.49 list=BLOCK-BGP
add address=109.175.8.57 list=BLOCK-BGP
add address=109.185.110.88 list=BLOCK-BGP
add address=109.185.115.105 list=BLOCK-BGP
add address=109.185.116.199 list=BLOCK-BGP
add address=109.185.230.100 list=BLOCK-BGP
add address=109.194.65.175 list=BLOCK-BGP
add address=109.196.34.8 list=BLOCK-BGP
add address=109.197.92.60 list=BLOCK-BGP
add address=109.200.159.30 list=BLOCK-BGP
add address=109.201.96.222 list=BLOCK-BGP
add address=109.203.209.168 list=BLOCK-BGP
add address=109.205.116.45 list=BLOCK-BGP
add address=109.207.61.81 list=BLOCK-BGP
add address=109.207.61.137 list=BLOCK-BGP
add address=109.207.61.156 list=BLOCK-BGP
add address=109.207.61.190 list=BLOCK-BGP
add address=109.207.61.206 list=BLOCK-BGP
add address=109.207.61.208 list=BLOCK-BGP
add address=109.207.61.210 list=BLOCK-BGP
add address=109.207.63.37 list=BLOCK-BGP
add address=109.224.37.220 list=BLOCK-BGP
add address=109.228.125.40 list=BLOCK-BGP
add address=109.236.85.145 list=BLOCK-BGP
add address=109.245.214.49 list=BLOCK-BGP
add address=109.248.201.17 list=BLOCK-BGP
add address=110.74.195.64 list=BLOCK-BGP
add address=110.77.149.20 list=BLOCK-BGP
add address=110.78.82.70 list=BLOCK-BGP
add address=110.78.164.188 list=BLOCK-BGP
add address=110.78.186.155 list=BLOCK-BGP
add address=110.232.67.42 list=BLOCK-BGP
add address=110.232.82.229 list=BLOCK-BGP
add address=111.8.176.121 list=BLOCK-BGP
add address=111.47.92.226 list=BLOCK-BGP
add address=111.68.7.122 list=BLOCK-BGP
add address=111.68.107.139 list=BLOCK-BGP
add address=111.90.187.94 list=BLOCK-BGP
add address=111.90.188.206 list=BLOCK-BGP
add address=111.92.178.246 list=BLOCK-BGP
add address=111.92.180.3 list=BLOCK-BGP
add address=112.14.47.6 list=BLOCK-BGP
add address=112.66.72.81 list=BLOCK-BGP
add address=112.78.134.229 list=BLOCK-BGP
add address=112.78.170.250 list=BLOCK-BGP
add address=112.121.189.218 list=BLOCK-BGP
add address=112.133.219.244 list=BLOCK-BGP
add address=112.166.143.38 list=BLOCK-BGP
add address=112.196.98.174 list=BLOCK-BGP
add address=112.213.121.145 list=BLOCK-BGP
add address=112.220.151.204 list=BLOCK-BGP
add address=112.225.139.142 list=BLOCK-BGP
add address=113.11.136.28 list=BLOCK-BGP
add address=113.160.58.230 list=BLOCK-BGP
add address=113.160.106.45 list=BLOCK-BGP
add address=113.160.234.147 list=BLOCK-BGP
add address=113.160.234.229 list=BLOCK-BGP
add address=113.195.224.222 list=BLOCK-BGP
add address=113.234.162.178 list=BLOCK-BGP
add address=113.245.219.36 list=BLOCK-BGP
add address=113.248.192.183 list=BLOCK-BGP
add address=114.5.196.209 list=BLOCK-BGP
add address=114.5.199.209 list=BLOCK-BGP
add address=114.6.88.238 list=BLOCK-BGP
add address=114.69.244.66 list=BLOCK-BGP
add address=114.89.83.28 list=BLOCK-BGP
add address=114.96.218.231 list=BLOCK-BGP
add address=114.99.200.41 list=BLOCK-BGP
add address=114.115.131.168 list=BLOCK-BGP
add address=114.134.16.52 list=BLOCK-BGP
add address=114.242.116.52 list=BLOCK-BGP
add address=115.61.104.53 list=BLOCK-BGP
add address=115.75.1.184 list=BLOCK-BGP
add address=115.88.24.203 list=BLOCK-BGP
add address=115.91.83.42 list=BLOCK-BGP
add address=115.91.207.131 list=BLOCK-BGP
add address=115.124.86.147 list=BLOCK-BGP
add address=115.124.86.250 list=BLOCK-BGP
add address=115.240.101.49 list=BLOCK-BGP
add address=116.0.2.162 list=BLOCK-BGP
add address=116.0.37.130 list=BLOCK-BGP
add address=116.58.227.197 list=BLOCK-BGP
add address=116.58.247.161 list=BLOCK-BGP
add address=116.58.254.9 list=BLOCK-BGP
add address=116.80.41.12 list=BLOCK-BGP
add address=116.90.122.234 list=BLOCK-BGP
add address=116.90.229.186 list=BLOCK-BGP
add address=116.118.98.9 list=BLOCK-BGP
add address=116.126.116.6 list=BLOCK-BGP
add address=116.162.157.253 list=BLOCK-BGP
add address=116.206.61.179 list=BLOCK-BGP
add address=116.212.123.36 list=BLOCK-BGP
add address=116.226.98.221 list=BLOCK-BGP
add address=116.237.143.152 list=BLOCK-BGP
add address=116.239.4.130 list=BLOCK-BGP
add address=116.239.27.130 list=BLOCK-BGP
add address=116.254.119.31 list=BLOCK-BGP
add address=117.4.115.169 list=BLOCK-BGP
add address=117.18.3.239 list=BLOCK-BGP
add address=117.68.147.8 list=BLOCK-BGP
add address=117.103.5.186 list=BLOCK-BGP
add address=117.202.20.66 list=BLOCK-BGP
add address=117.252.65.119 list=BLOCK-BGP
add address=118.39.57.75 list=BLOCK-BGP
add address=118.70.32.222 list=BLOCK-BGP
add address=118.70.109.148 list=BLOCK-BGP
add address=118.70.131.249 list=BLOCK-BGP
add address=118.97.47.248 list=BLOCK-BGP
add address=118.97.107.65 list=BLOCK-BGP
add address=118.99.70.237 list=BLOCK-BGP
add address=118.99.77.34 list=BLOCK-BGP
add address=118.99.78.139 list=BLOCK-BGP
add address=118.99.95.235 list=BLOCK-BGP
add address=118.174.47.182 list=BLOCK-BGP
add address=118.174.232.106 list=BLOCK-BGP
add address=118.175.93.148 list=BLOCK-BGP
add address=118.186.17.243 list=BLOCK-BGP
add address=119.2.7.97 list=BLOCK-BGP
add address=119.18.147.81 list=BLOCK-BGP
add address=119.18.152.210 list=BLOCK-BGP
add address=119.42.123.215 list=BLOCK-BGP
add address=119.57.115.58 list=BLOCK-BGP
add address=119.82.241.21 list=BLOCK-BGP
add address=119.82.253.24 list=BLOCK-BGP
add address=119.110.75.246 list=BLOCK-BGP
add address=119.110.81.210 list=BLOCK-BGP
add address=119.120.130.108 list=BLOCK-BGP
add address=119.122.101.191 list=BLOCK-BGP
add address=119.122.233.68 list=BLOCK-BGP
add address=119.123.107.146 list=BLOCK-BGP
add address=119.125.5.252 list=BLOCK-BGP
add address=119.125.82.150 list=BLOCK-BGP
add address=119.133.142.250 list=BLOCK-BGP
add address=119.134.158.211 list=BLOCK-BGP
add address=119.165.110.54 list=BLOCK-BGP
add address=120.50.8.2 list=BLOCK-BGP
add address=121.1.41.162 list=BLOCK-BGP
add address=121.13.229.213 list=BLOCK-BGP
add address=121.13.252.58 list=BLOCK-BGP
add address=121.13.252.60 list=BLOCK-BGP
add address=121.13.252.61 list=BLOCK-BGP
add address=121.46.26.213 list=BLOCK-BGP
add address=121.139.218.165 list=BLOCK-BGP
add address=121.200.62.246 list=BLOCK-BGP
add address=121.205.216.101 list=BLOCK-BGP
add address=121.205.216.231 list=BLOCK-BGP
add address=121.205.218.107 list=BLOCK-BGP
add address=121.241.90.242 list=BLOCK-BGP
add address=122.9.37.206 list=BLOCK-BGP
add address=122.14.213.89 list=BLOCK-BGP
add address=122.52.187.137 list=BLOCK-BGP
add address=122.55.202.100 list=BLOCK-BGP
add address=122.102.43.82 list=BLOCK-BGP
add address=122.116.122.6 list=BLOCK-BGP
add address=122.155.28.155 list=BLOCK-BGP
add address=122.186.210.254 list=BLOCK-BGP
add address=123.16.188.2 list=BLOCK-BGP
add address=123.49.53.170 list=BLOCK-BGP
add address=123.112.246.203 list=BLOCK-BGP
add address=123.200.22.234 list=BLOCK-BGP
add address=123.201.131.62 list=BLOCK-BGP
add address=123.213.70.176 list=BLOCK-BGP
add address=123.234.148.50 list=BLOCK-BGP
add address=123.237.251.19 list=BLOCK-BGP
add address=124.41.240.177 list=BLOCK-BGP
add address=124.115.21.11 list=BLOCK-BGP
add address=124.158.175.26 list=BLOCK-BGP
add address=124.225.116.119 list=BLOCK-BGP
add address=125.19.99.90 list=BLOCK-BGP
add address=125.39.66.162 list=BLOCK-BGP
add address=125.87.82.86 list=BLOCK-BGP
add address=125.212.220.48 list=BLOCK-BGP
add address=128.199.108.50 list=BLOCK-BGP
add address=129.146.249.128 list=BLOCK-BGP
add address=129.205.210.90 list=BLOCK-BGP
add address=130.12.180.85 list=BLOCK-BGP
add address=130.12.180.144 list=BLOCK-BGP
add address=130.12.181.219 list=BLOCK-BGP
add address=130.12.182.109 list=BLOCK-BGP
add address=130.12.182.175 list=BLOCK-BGP
add address=131.72.69.42 list=BLOCK-BGP
add address=131.221.120.196 list=BLOCK-BGP
add address=131.221.148.73 list=BLOCK-BGP
add address=131.221.217.176 list=BLOCK-BGP
add address=132.148.251.128 list=BLOCK-BGP
add address=132.255.110.195 list=BLOCK-BGP
add address=132.255.210.122 list=BLOCK-BGP
add address=134.73.182.56 list=BLOCK-BGP
add address=134.73.209.39 list=BLOCK-BGP
add address=134.249.151.4 list=BLOCK-BGP
add address=135.181.32.230 list=BLOCK-BGP
add address=137.175.127.217 list=BLOCK-BGP
add address=137.184.130.162 list=BLOCK-BGP
add address=137.220.157.182 list=BLOCK-BGP
add address=138.59.140.77 list=BLOCK-BGP
add address=138.68.56.139 list=BLOCK-BGP
add address=138.97.2.187 list=BLOCK-BGP
add address=138.99.93.224 list=BLOCK-BGP
add address=138.99.93.227 list=BLOCK-BGP
add address=138.117.97.158 list=BLOCK-BGP
add address=138.117.141.27 list=BLOCK-BGP
add address=138.121.198.90 list=BLOCK-BGP
add address=138.219.244.154 list=BLOCK-BGP
add address=139.45.195.28 list=BLOCK-BGP
add address=139.45.195.93 list=BLOCK-BGP
add address=139.45.195.149 list=BLOCK-BGP
add address=139.45.196.12 list=BLOCK-BGP
add address=139.45.196.74 list=BLOCK-BGP
add address=139.59.122.20 list=BLOCK-BGP
add address=139.60.160.166 list=BLOCK-BGP
add address=139.60.160.200 list=BLOCK-BGP
add address=139.60.161.95 list=BLOCK-BGP
add address=139.99.104.233 list=BLOCK-BGP
add address=139.215.147.100 list=BLOCK-BGP
add address=139.255.10.234 list=BLOCK-BGP
add address=139.255.21.74 list=BLOCK-BGP
add address=139.255.109.27 list=BLOCK-BGP
add address=139.255.194.114 list=BLOCK-BGP
add address=140.112.93.58 list=BLOCK-BGP
add address=140.188.115.3 list=BLOCK-BGP
add address=141.8.195.197 list=BLOCK-BGP
add address=141.98.83.238 list=BLOCK-BGP
add address=141.255.153.161 list=BLOCK-BGP
add address=142.91.130.36 list=BLOCK-BGP
add address=142.111.11.147 list=BLOCK-BGP
add address=142.111.94.11 list=BLOCK-BGP
add address=142.234.157.246 list=BLOCK-BGP
add address=143.202.136.51 list=BLOCK-BGP
add address=143.202.163.216 list=BLOCK-BGP
add address=143.255.108.173 list=BLOCK-BGP
add address=144.31.73.182 list=BLOCK-BGP
add address=144.76.42.215 list=BLOCK-BGP
add address=144.76.186.55 list=BLOCK-BGP
add address=144.96.103.245 list=BLOCK-BGP
add address=144.172.65.58 list=BLOCK-BGP
add address=144.172.83.13 list=BLOCK-BGP
add address=146.0.77.15 list=BLOCK-BGP
add address=146.75.85.75 list=BLOCK-BGP
add address=147.45.45.79 list=BLOCK-BGP
add address=147.75.63.87 list=BLOCK-BGP
add address=147.75.113.231 list=BLOCK-BGP
add address=147.92.45.196 list=BLOCK-BGP
add address=147.124.222.75 list=BLOCK-BGP
add address=147.139.181.77 list=BLOCK-BGP
add address=147.182.132.144 list=BLOCK-BGP
add address=147.255.20.247 list=BLOCK-BGP
add address=148.101.64.83 list=BLOCK-BGP
add address=148.101.70.230 list=BLOCK-BGP
add address=148.101.73.26 list=BLOCK-BGP
add address=148.101.76.137 list=BLOCK-BGP
add address=148.101.76.245 list=BLOCK-BGP
add address=148.101.78.28 list=BLOCK-BGP
add address=148.101.87.210 list=BLOCK-BGP
add address=148.101.93.223 list=BLOCK-BGP
add address=148.101.94.53 list=BLOCK-BGP
add address=148.101.94.111 list=BLOCK-BGP
add address=148.101.95.42 list=BLOCK-BGP
add address=148.135.114.20 list=BLOCK-BGP
add address=148.178.107.39 list=BLOCK-BGP
add address=148.255.0.246 list=BLOCK-BGP
add address=148.255.0.249 list=BLOCK-BGP
add address=148.255.2.213 list=BLOCK-BGP
add address=148.255.4.51 list=BLOCK-BGP
add address=148.255.4.53 list=BLOCK-BGP
add address=148.255.5.132 list=BLOCK-BGP
add address=148.255.6.98 list=BLOCK-BGP
add address=148.255.10.10 list=BLOCK-BGP
add address=148.255.16.226 list=BLOCK-BGP
add address=148.255.18.17 list=BLOCK-BGP
add address=148.255.25.101 list=BLOCK-BGP
add address=148.255.25.228 list=BLOCK-BGP
add address=148.255.27.36 list=BLOCK-BGP
add address=149.29.118.213 list=BLOCK-BGP
add address=149.29.121.186 list=BLOCK-BGP
add address=149.40.50.15 list=BLOCK-BGP
add address=149.100.143.185 list=BLOCK-BGP
add address=149.100.143.223 list=BLOCK-BGP
add address=149.202.109.202 list=BLOCK-BGP
add address=150.241.105.195 list=BLOCK-BGP
add address=151.101.17.75 list=BLOCK-BGP
add address=151.101.93.75 list=BLOCK-BGP
add address=151.101.137.75 list=BLOCK-BGP
add address=151.237.3.113 list=BLOCK-BGP
add address=151.251.30.69 list=BLOCK-BGP
add address=152.0.113.239 list=BLOCK-BGP
add address=152.0.116.140 list=BLOCK-BGP
add address=152.0.117.138 list=BLOCK-BGP
add address=152.0.117.158 list=BLOCK-BGP
add address=152.0.120.255 list=BLOCK-BGP
add address=152.0.121.75 list=BLOCK-BGP
add address=152.0.121.241 list=BLOCK-BGP
add address=152.0.122.15 list=BLOCK-BGP
add address=152.89.247.74 list=BLOCK-BGP
add address=152.89.247.80 list=BLOCK-BGP
add address=152.89.247.184 list=BLOCK-BGP
add address=152.204.128.46 list=BLOCK-BGP
add address=152.231.25.194 list=BLOCK-BGP
add address=154.7.84.216 list=BLOCK-BGP
add address=154.7.84.226 list=BLOCK-BGP
add address=154.12.49.215 list=BLOCK-BGP
add address=154.16.105.147 list=BLOCK-BGP
add address=154.16.192.70 list=BLOCK-BGP
add address=154.19.220.30 list=BLOCK-BGP
add address=154.22.181.113 list=BLOCK-BGP
add address=154.22.241.90 list=BLOCK-BGP
add address=154.22.253.228 list=BLOCK-BGP
add address=154.23.71.126 list=BLOCK-BGP
add address=154.23.181.31 list=BLOCK-BGP
add address=154.23.196.16 list=BLOCK-BGP
add address=154.31.1.46 list=BLOCK-BGP
add address=154.31.13.225 list=BLOCK-BGP
add address=154.31.56.2 list=BLOCK-BGP
add address=154.36.166.197 list=BLOCK-BGP
add address=154.36.206.248 list=BLOCK-BGP
add address=154.36.212.226 list=BLOCK-BGP
add address=154.36.223.79 list=BLOCK-BGP
add address=154.36.234.24 list=BLOCK-BGP
add address=154.36.234.34 list=BLOCK-BGP
add address=154.36.239.160 list=BLOCK-BGP
add address=154.37.36.77 list=BLOCK-BGP
add address=154.37.46.197 list=BLOCK-BGP
add address=154.38.113.94 list=BLOCK-BGP
add address=154.55.182.8 list=BLOCK-BGP
add address=154.55.223.92 list=BLOCK-BGP
add address=154.64.84.212 list=BLOCK-BGP
add address=154.66.245.47 list=BLOCK-BGP
add address=154.72.197.106 list=BLOCK-BGP
add address=154.73.108.206 list=BLOCK-BGP
add address=154.73.159.10 list=BLOCK-BGP
add address=154.79.242.178 list=BLOCK-BGP
add address=154.79.254.176 list=BLOCK-BGP
add address=154.80.177.237 list=BLOCK-BGP
add address=154.80.215.16 list=BLOCK-BGP
add address=154.80.215.45 list=BLOCK-BGP
add address=154.85.42.133 list=BLOCK-BGP
add address=154.85.44.140 list=BLOCK-BGP
add address=154.85.253.73 list=BLOCK-BGP
add address=154.86.17.97 list=BLOCK-BGP
add address=154.86.17.99 list=BLOCK-BGP
add address=154.86.143.254 list=BLOCK-BGP
add address=154.91.25.11 list=BLOCK-BGP
add address=154.91.27.27 list=BLOCK-BGP
add address=154.91.33.189 list=BLOCK-BGP
add address=154.91.250.182 list=BLOCK-BGP
add address=154.94.94.125 list=BLOCK-BGP
add address=154.94.115.41 list=BLOCK-BGP
add address=154.94.123.59 list=BLOCK-BGP
add address=154.94.234.112 list=BLOCK-BGP
add address=154.113.19.30 list=BLOCK-BGP
add address=154.113.32.26 list=BLOCK-BGP
add address=154.113.69.154 list=BLOCK-BGP
add address=154.118.241.166 list=BLOCK-BGP
add address=154.195.80.66 list=BLOCK-BGP
add address=154.197.26.133 list=BLOCK-BGP
add address=154.197.62.69 list=BLOCK-BGP
add address=154.199.237.235 list=BLOCK-BGP
add address=154.201.196.6 list=BLOCK-BGP
add address=154.201.196.24 list=BLOCK-BGP
add address=154.201.226.106 list=BLOCK-BGP
add address=154.202.253.32 list=BLOCK-BGP
add address=154.205.232.245 list=BLOCK-BGP
add address=154.208.15.208 list=BLOCK-BGP
add address=154.208.74.203 list=BLOCK-BGP
add address=154.208.80.179 list=BLOCK-BGP
add address=154.208.105.7 list=BLOCK-BGP
add address=154.209.25.124 list=BLOCK-BGP
add address=154.209.142.100 list=BLOCK-BGP
add address=154.209.176.203 list=BLOCK-BGP
add address=154.210.106.213 list=BLOCK-BGP
add address=154.210.136.145 list=BLOCK-BGP
add address=154.210.225.91 list=BLOCK-BGP
add address=154.211.127.142 list=BLOCK-BGP
add address=154.213.36.37 list=BLOCK-BGP
add address=154.216.20.237 list=BLOCK-BGP
add address=154.216.23.44 list=BLOCK-BGP
add address=154.216.167.211 list=BLOCK-BGP
add address=154.218.122.61 list=BLOCK-BGP
add address=154.219.175.99 list=BLOCK-BGP
add address=154.221.191.95 list=BLOCK-BGP
add address=154.222.94.7 list=BLOCK-BGP
add address=154.239.1.77 list=BLOCK-BGP
add address=155.133.83.45 list=BLOCK-BGP
add address=155.133.83.61 list=BLOCK-BGP
add address=155.133.83.161 list=BLOCK-BGP
add address=155.159.66.88 list=BLOCK-BGP
add address=155.235.78.30 list=BLOCK-BGP
add address=155.235.78.50 list=BLOCK-BGP
add address=155.235.88.65 list=BLOCK-BGP
add address=156.38.29.74 list=BLOCK-BGP
add address=156.96.151.237 list=BLOCK-BGP
add address=156.146.34.9 list=BLOCK-BGP
add address=156.146.34.52 list=BLOCK-BGP
add address=156.224.2.87 list=BLOCK-BGP
add address=156.224.51.225 list=BLOCK-BGP
add address=156.226.155.68 list=BLOCK-BGP
add address=156.229.183.23 list=BLOCK-BGP
add address=156.229.229.195 list=BLOCK-BGP
add address=156.230.128.108 list=BLOCK-BGP
add address=156.230.128.118 list=BLOCK-BGP
add address=156.230.132.126 list=BLOCK-BGP
add address=156.230.152.120 list=BLOCK-BGP
add address=156.230.154.104 list=BLOCK-BGP
add address=156.230.160.16 list=BLOCK-BGP
add address=156.232.135.205 list=BLOCK-BGP
add address=156.232.163.30 list=BLOCK-BGP
add address=156.233.250.158 list=BLOCK-BGP
add address=156.234.7.134 list=BLOCK-BGP
add address=156.234.73.148 list=BLOCK-BGP
add address=156.234.173.76 list=BLOCK-BGP
add address=156.235.1.30 list=BLOCK-BGP
add address=156.235.107.213 list=BLOCK-BGP
add address=156.236.16.237 list=BLOCK-BGP
add address=156.236.110.235 list=BLOCK-BGP
add address=156.237.225.73 list=BLOCK-BGP
add address=156.238.61.230 list=BLOCK-BGP
add address=156.238.74.243 list=BLOCK-BGP
add address=156.242.168.41 list=BLOCK-BGP
add address=156.242.168.97 list=BLOCK-BGP
add address=156.242.168.129 list=BLOCK-BGP
add address=156.244.39.97 list=BLOCK-BGP
add address=156.244.49.55 list=BLOCK-BGP
add address=156.248.176.225 list=BLOCK-BGP
add address=156.248.187.229 list=BLOCK-BGP
add address=156.250.52.72 list=BLOCK-BGP
add address=156.250.203.231 list=BLOCK-BGP
add address=156.251.235.208 list=BLOCK-BGP
add address=156.255.59.248 list=BLOCK-BGP
add address=156.255.202.30 list=BLOCK-BGP
add address=156.255.229.91 list=BLOCK-BGP
add address=156.255.250.243 list=BLOCK-BGP
add address=157.55.136.23 list=BLOCK-BGP
add address=157.100.53.104 list=BLOCK-BGP
add address=157.100.56.178 list=BLOCK-BGP
add address=157.230.8.75 list=BLOCK-BGP
add address=157.230.221.198 list=BLOCK-BGP
add address=157.250.195.229 list=BLOCK-BGP
add address=158.94.208.102 list=BLOCK-BGP
add address=158.94.210.247 list=BLOCK-BGP
add address=158.140.185.64 list=BLOCK-BGP
add address=158.160.12.253 list=BLOCK-BGP
add address=158.160.82.150 list=BLOCK-BGP
add address=158.160.85.240 list=BLOCK-BGP
add address=159.65.1.71 list=BLOCK-BGP
add address=159.89.128.130 list=BLOCK-BGP
add address=159.89.132.167 list=BLOCK-BGP
add address=159.223.136.87 list=BLOCK-BGP
add address=160.124.7.2 list=BLOCK-BGP
add address=160.226.139.135 list=BLOCK-BGP
add address=162.244.80.235 list=BLOCK-BGP
add address=162.249.66.138 list=BLOCK-BGP
add address=162.255.108.245 list=BLOCK-BGP
add address=163.123.142.210 list=BLOCK-BGP
add address=163.123.142.220 list=BLOCK-BGP
add address=163.123.143.202 list=BLOCK-BGP
add address=163.123.143.226 list=BLOCK-BGP
add address=164.88.14.70 list=BLOCK-BGP
add address=164.88.59.3 list=BLOCK-BGP
add address=164.155.211.87 list=BLOCK-BGP
add address=165.3.4.22 list=BLOCK-BGP
add address=165.3.120.4 list=BLOCK-BGP
add address=165.22.28.242 list=BLOCK-BGP
add address=165.90.225.15 list=BLOCK-BGP
add address=165.154.64.124 list=BLOCK-BGP
add address=166.88.51.91 list=BLOCK-BGP
add address=166.88.202.213 list=BLOCK-BGP
add address=167.62.134.220 list=BLOCK-BGP
add address=167.99.168.251 list=BLOCK-BGP
add address=167.249.170.26 list=BLOCK-BGP
add address=168.100.10.152 list=BLOCK-BGP
add address=168.100.11.72 list=BLOCK-BGP
add address=168.121.139.31 list=BLOCK-BGP
add address=168.138.211.5 list=BLOCK-BGP
add address=168.149.76.38 list=BLOCK-BGP
add address=168.149.90.15 list=BLOCK-BGP
add address=168.181.121.195 list=BLOCK-BGP
add address=168.196.115.193 list=BLOCK-BGP
add address=168.205.200.55 list=BLOCK-BGP
add address=168.227.15.229 list=BLOCK-BGP
add address=168.227.41.201 list=BLOCK-BGP
add address=169.239.223.136 list=BLOCK-BGP
add address=169.255.75.117 list=BLOCK-BGP
add address=169.255.189.105 list=BLOCK-BGP
add address=170.10.162.135 list=BLOCK-BGP
add address=170.78.15.56 list=BLOCK-BGP
add address=170.81.35.26 list=BLOCK-BGP
add address=170.178.192.41 list=BLOCK-BGP
add address=170.178.192.55 list=BLOCK-BGP
add address=170.210.4.222 list=BLOCK-BGP
add address=170.238.73.46 list=BLOCK-BGP
add address=170.239.255.253 list=BLOCK-BGP
add address=170.244.210.109 list=BLOCK-BGP
add address=170.246.85.106 list=BLOCK-BGP
add address=170.254.148.94 list=BLOCK-BGP
add address=171.8.66.210 list=BLOCK-BGP
add address=171.8.68.117 list=BLOCK-BGP
add address=171.15.255.3 list=BLOCK-BGP
add address=171.22.30.147 list=BLOCK-BGP
add address=171.66.223.221 list=BLOCK-BGP
add address=171.211.82.237 list=BLOCK-BGP
add address=171.221.240.17 list=BLOCK-BGP
add address=171.233.151.214 list=BLOCK-BGP
add address=172.80.21.244 list=BLOCK-BGP
add address=172.81.41.196 list=BLOCK-BGP
add address=172.87.29.240 list=BLOCK-BGP
add address=172.87.29.241 list=BLOCK-BGP
add address=172.93.193.64 list=BLOCK-BGP
add address=172.94.96.95 list=BLOCK-BGP
add address=172.106.112.46 list=BLOCK-BGP
add address=172.120.13.98 list=BLOCK-BGP
add address=172.120.39.195 list=BLOCK-BGP
add address=172.120.135.68 list=BLOCK-BGP
add address=172.121.10.180 list=BLOCK-BGP
add address=172.121.47.35 list=BLOCK-BGP
add address=172.121.57.253 list=BLOCK-BGP
add address=172.121.92.152 list=BLOCK-BGP
add address=172.163.146.56 list=BLOCK-BGP
add address=172.245.155.173 list=BLOCK-BGP
add address=172.247.76.26 list=BLOCK-BGP
add address=172.252.99.154 list=BLOCK-BGP
add address=173.165.102.210 list=BLOCK-BGP
add address=173.232.17.25 list=BLOCK-BGP
add address=173.232.61.238 list=BLOCK-BGP
add address=173.232.94.245 list=BLOCK-BGP
add address=173.232.144.176 list=BLOCK-BGP
add address=173.247.227.66 list=BLOCK-BGP
add address=173.247.227.70 list=BLOCK-BGP
add address=174.29.64.101 list=BLOCK-BGP
add address=174.29.176.216 list=BLOCK-BGP
add address=174.128.231.106 list=BLOCK-BGP
add address=174.139.9.179 list=BLOCK-BGP
add address=174.139.112.50 list=BLOCK-BGP
add address=174.139.112.54 list=BLOCK-BGP
add address=175.11.231.249 list=BLOCK-BGP
add address=175.100.72.95 list=BLOCK-BGP
add address=175.100.103.132 list=BLOCK-BGP
add address=175.101.80.134 list=BLOCK-BGP
add address=175.101.85.129 list=BLOCK-BGP
add address=175.139.179.65 list=BLOCK-BGP
add address=175.141.163.189 list=BLOCK-BGP
add address=176.9.160.78 list=BLOCK-BGP
add address=176.44.52.253 list=BLOCK-BGP
add address=176.44.57.75 list=BLOCK-BGP
add address=176.44.61.46 list=BLOCK-BGP
add address=176.44.70.198 list=BLOCK-BGP
add address=176.44.77.97 list=BLOCK-BGP
add address=176.44.82.227 list=BLOCK-BGP
add address=176.44.83.99 list=BLOCK-BGP
add address=176.44.87.193 list=BLOCK-BGP
add address=176.44.99.58 list=BLOCK-BGP
add address=176.44.100.8 list=BLOCK-BGP
add address=176.44.100.245 list=BLOCK-BGP
add address=176.44.106.149 list=BLOCK-BGP
add address=176.44.109.1 list=BLOCK-BGP
add address=176.44.120.86 list=BLOCK-BGP
add address=176.44.124.25 list=BLOCK-BGP
add address=176.44.124.165 list=BLOCK-BGP
add address=176.44.125.173 list=BLOCK-BGP
add address=176.46.152.3 list=BLOCK-BGP
add address=176.46.152.6 list=BLOCK-BGP
add address=176.46.157.35 list=BLOCK-BGP
add address=176.46.157.45 list=BLOCK-BGP
add address=176.46.157.46 list=BLOCK-BGP
add address=176.46.157.49 list=BLOCK-BGP
add address=176.46.157.50 list=BLOCK-BGP
add address=176.46.157.53 list=BLOCK-BGP
add address=176.46.157.60 list=BLOCK-BGP
add address=176.46.158.28 list=BLOCK-BGP
add address=176.46.158.29 list=BLOCK-BGP
add address=176.46.158.30 list=BLOCK-BGP
add address=176.46.158.32 list=BLOCK-BGP
add address=176.46.158.69 list=BLOCK-BGP
add address=176.46.158.70 list=BLOCK-BGP
add address=176.52.253.14 list=BLOCK-BGP
add address=176.56.107.171 list=BLOCK-BGP
add address=176.65.137.5 list=BLOCK-BGP
add address=176.65.137.193 list=BLOCK-BGP
add address=176.65.143.173 list=BLOCK-BGP
add address=176.65.151.205 list=BLOCK-BGP
add address=176.98.75.120 list=BLOCK-BGP
add address=176.98.95.132 list=BLOCK-BGP
add address=176.108.104.84 list=BLOCK-BGP
add address=176.111.174.92 list=BLOCK-BGP
add address=176.111.174.109 list=BLOCK-BGP
add address=176.113.115.6 list=BLOCK-BGP
add address=176.113.115.58 list=BLOCK-BGP
add address=176.113.115.84 list=BLOCK-BGP
add address=176.113.115.85 list=BLOCK-BGP
add address=176.113.115.135 list=BLOCK-BGP
add address=176.113.115.136 list=BLOCK-BGP
add address=176.113.115.155 list=BLOCK-BGP
add address=176.113.115.253 list=BLOCK-BGP
add address=176.113.157.149 list=BLOCK-BGP
add address=176.118.51.82 list=BLOCK-BGP
add address=176.118.165.45 list=BLOCK-BGP
add address=176.119.1.100 list=BLOCK-BGP
add address=176.122.23.55 list=BLOCK-BGP
add address=176.123.218.161 list=BLOCK-BGP
add address=176.123.228.234 list=BLOCK-BGP
add address=176.124.192.160 list=BLOCK-BGP
add address=176.124.192.196 list=BLOCK-BGP
add address=176.124.192.198 list=BLOCK-BGP
add address=176.124.192.243 list=BLOCK-BGP
add address=176.124.192.251 list=BLOCK-BGP
add address=176.124.193.14 list=BLOCK-BGP
add address=176.124.193.51 list=BLOCK-BGP
add address=176.124.193.53 list=BLOCK-BGP
add address=176.124.193.85 list=BLOCK-BGP
add address=176.124.193.108 list=BLOCK-BGP
add address=176.124.193.126 list=BLOCK-BGP
add address=176.124.193.173 list=BLOCK-BGP
add address=176.124.221.153 list=BLOCK-BGP
add address=176.124.221.159 list=BLOCK-BGP
add address=176.124.222.87 list=BLOCK-BGP
add address=176.197.100.134 list=BLOCK-BGP
add address=176.221.116.10 list=BLOCK-BGP
add address=176.235.131.228 list=BLOCK-BGP
add address=176.235.164.177 list=BLOCK-BGP
add address=176.236.163.36 list=BLOCK-BGP
add address=176.241.89.244 list=BLOCK-BGP
add address=176.241.94.228 list=BLOCK-BGP
add address=177.10.84.121 list=BLOCK-BGP
add address=177.10.144.22 list=BLOCK-BGP
add address=177.11.75.18 list=BLOCK-BGP
add address=177.19.53.195 list=BLOCK-BGP
add address=177.19.107.36 list=BLOCK-BGP
add address=177.21.19.87 list=BLOCK-BGP
add address=177.21.30.32 list=BLOCK-BGP
add address=177.36.159.34 list=BLOCK-BGP
add address=177.37.166.166 list=BLOCK-BGP
add address=177.64.31.243 list=BLOCK-BGP
add address=177.66.195.114 list=BLOCK-BGP
add address=177.66.195.117 list=BLOCK-BGP
add address=177.66.244.100 list=BLOCK-BGP
add address=177.66.247.81 list=BLOCK-BGP
add address=177.66.247.233 list=BLOCK-BGP
add address=177.67.162.42 list=BLOCK-BGP
add address=177.69.19.49 list=BLOCK-BGP
add address=177.69.45.188 list=BLOCK-BGP
add address=177.69.180.171 list=BLOCK-BGP
add address=177.72.6.18 list=BLOCK-BGP
add address=177.72.113.161 list=BLOCK-BGP
add address=177.86.64.145 list=BLOCK-BGP
add address=177.86.64.173 list=BLOCK-BGP
add address=177.86.64.253 list=BLOCK-BGP
add address=177.87.223.194 list=BLOCK-BGP
add address=177.92.9.10 list=BLOCK-BGP
add address=177.93.72.38 list=BLOCK-BGP
add address=177.96.253.97 list=BLOCK-BGP
add address=177.98.129.71 list=BLOCK-BGP
add address=177.98.131.180 list=BLOCK-BGP
add address=177.98.134.40 list=BLOCK-BGP
add address=177.98.135.7 list=BLOCK-BGP
add address=177.98.140.8 list=BLOCK-BGP
add address=177.98.142.217 list=BLOCK-BGP
add address=177.98.143.135 list=BLOCK-BGP
add address=177.98.153.119 list=BLOCK-BGP
add address=177.98.154.79 list=BLOCK-BGP
add address=177.98.211.12 list=BLOCK-BGP
add address=177.98.215.46 list=BLOCK-BGP
add address=177.99.68.118 list=BLOCK-BGP
add address=177.99.69.15 list=BLOCK-BGP
add address=177.99.69.190 list=BLOCK-BGP
add address=177.99.71.34 list=BLOCK-BGP
add address=177.101.135.84 list=BLOCK-BGP
add address=177.104.123.30 list=BLOCK-BGP
add address=177.106.18.78 list=BLOCK-BGP
add address=177.124.225.106 list=BLOCK-BGP
add address=177.126.95.225 list=BLOCK-BGP
add address=177.128.44.131 list=BLOCK-BGP
add address=177.128.78.0 list=BLOCK-BGP
add address=177.133.55.99 list=BLOCK-BGP
add address=177.133.110.125 list=BLOCK-BGP
add address=177.134.195.227 list=BLOCK-BGP
add address=177.134.196.208 list=BLOCK-BGP
add address=177.134.197.2 list=BLOCK-BGP
add address=177.134.204.84 list=BLOCK-BGP
add address=177.134.205.69 list=BLOCK-BGP
add address=177.135.56.118 list=BLOCK-BGP
add address=177.135.59.182 list=BLOCK-BGP
add address=177.159.213.70 list=BLOCK-BGP
add address=177.159.215.228 list=BLOCK-BGP
add address=177.191.143.220 list=BLOCK-BGP
add address=177.202.59.58 list=BLOCK-BGP
add address=177.206.186.6 list=BLOCK-BGP
add address=177.206.186.46 list=BLOCK-BGP
add address=177.206.191.242 list=BLOCK-BGP
add address=177.206.228.123 list=BLOCK-BGP
add address=177.206.228.254 list=BLOCK-BGP
add address=177.206.229.156 list=BLOCK-BGP
add address=177.207.7.141 list=BLOCK-BGP
add address=177.207.72.132 list=BLOCK-BGP
add address=177.223.58.68 list=BLOCK-BGP
add address=177.234.236.1 list=BLOCK-BGP
add address=177.241.250.250 list=BLOCK-BGP
add address=177.242.151.131 list=BLOCK-BGP
add address=178.16.53.7 list=BLOCK-BGP
add address=178.30.76.171 list=BLOCK-BGP
add address=178.30.83.147 list=BLOCK-BGP
add address=178.30.96.161 list=BLOCK-BGP
add address=178.30.101.69 list=BLOCK-BGP
add address=178.30.120.23 list=BLOCK-BGP
add address=178.30.147.155 list=BLOCK-BGP
add address=178.31.200.102 list=BLOCK-BGP
add address=178.31.202.199 list=BLOCK-BGP
add address=178.31.220.64 list=BLOCK-BGP
add address=178.31.236.98 list=BLOCK-BGP
add address=178.62.113.205 list=BLOCK-BGP
add address=178.76.254.130 list=BLOCK-BGP
add address=178.134.155.82 list=BLOCK-BGP
add address=178.150.188.118 list=BLOCK-BGP
add address=178.151.134.232 list=BLOCK-BGP
add address=178.151.205.154 list=BLOCK-BGP
add address=178.158.23.244 list=BLOCK-BGP
add address=178.168.120.136 list=BLOCK-BGP
add address=178.173.171.10 list=BLOCK-BGP
add address=178.217.172.206 list=BLOCK-BGP
add address=178.218.201.63 list=BLOCK-BGP
add address=178.254.39.134 list=BLOCK-BGP
add address=178.254.148.37 list=BLOCK-BGP
add address=179.38.17.17 list=BLOCK-BGP
add address=179.38.22.4 list=BLOCK-BGP
add address=179.38.26.157 list=BLOCK-BGP
add address=179.38.31.32 list=BLOCK-BGP
add address=179.38.42.176 list=BLOCK-BGP
add address=179.38.49.44 list=BLOCK-BGP
add address=179.38.51.148 list=BLOCK-BGP
add address=179.38.53.181 list=BLOCK-BGP
add address=179.38.56.120 list=BLOCK-BGP
add address=179.38.56.231 list=BLOCK-BGP
add address=179.38.57.175 list=BLOCK-BGP
add address=179.38.74.201 list=BLOCK-BGP
add address=179.38.78.22 list=BLOCK-BGP
add address=179.38.80.70 list=BLOCK-BGP
add address=179.38.110.230 list=BLOCK-BGP
add address=179.38.113.222 list=BLOCK-BGP
add address=179.38.113.242 list=BLOCK-BGP
add address=179.38.115.131 list=BLOCK-BGP
add address=179.38.123.98 list=BLOCK-BGP
add address=179.43.139.83 list=BLOCK-BGP
add address=179.43.169.32 list=BLOCK-BGP
add address=179.52.22.168 list=BLOCK-BGP
add address=179.52.246.42 list=BLOCK-BGP
add address=179.53.80.107 list=BLOCK-BGP
add address=179.53.82.252 list=BLOCK-BGP
add address=179.53.84.61 list=BLOCK-BGP
add address=179.53.84.149 list=BLOCK-BGP
add address=179.53.89.206 list=BLOCK-BGP
add address=179.60.150.34 list=BLOCK-BGP
add address=179.95.75.151 list=BLOCK-BGP
add address=179.107.58.124 list=BLOCK-BGP
add address=179.108.158.204 list=BLOCK-BGP
add address=179.126.136.104 list=BLOCK-BGP
add address=179.126.137.226 list=BLOCK-BGP
add address=179.176.151.17 list=BLOCK-BGP
add address=179.176.154.150 list=BLOCK-BGP
add address=179.176.156.110 list=BLOCK-BGP
add address=179.177.51.204 list=BLOCK-BGP
add address=179.177.53.15 list=BLOCK-BGP
add address=179.177.53.35 list=BLOCK-BGP
add address=179.177.53.233 list=BLOCK-BGP
add address=179.177.56.254 list=BLOCK-BGP
add address=179.177.59.151 list=BLOCK-BGP
add address=179.177.60.222 list=BLOCK-BGP
add address=179.177.61.253 list=BLOCK-BGP
add address=179.177.62.137 list=BLOCK-BGP
add address=179.177.63.84 list=BLOCK-BGP
add address=179.178.42.128 list=BLOCK-BGP
add address=179.179.96.230 list=BLOCK-BGP
add address=179.179.108.11 list=BLOCK-BGP
add address=179.180.145.197 list=BLOCK-BGP
add address=179.181.48.132 list=BLOCK-BGP
add address=179.181.96.174 list=BLOCK-BGP
add address=179.181.103.35 list=BLOCK-BGP
add address=179.181.107.14 list=BLOCK-BGP
add address=179.181.108.214 list=BLOCK-BGP
add address=179.181.111.195 list=BLOCK-BGP
add address=179.182.102.1 list=BLOCK-BGP
add address=179.182.102.78 list=BLOCK-BGP
add address=179.183.186.116 list=BLOCK-BGP
add address=179.183.188.93 list=BLOCK-BGP
add address=179.184.165.181 list=BLOCK-BGP
add address=179.185.137.115 list=BLOCK-BGP
add address=179.185.139.186 list=BLOCK-BGP
add address=179.185.141.243 list=BLOCK-BGP
add address=179.185.143.103 list=BLOCK-BGP
add address=179.185.176.206 list=BLOCK-BGP
add address=179.185.176.209 list=BLOCK-BGP
add address=179.185.177.63 list=BLOCK-BGP
add address=179.185.178.21 list=BLOCK-BGP
add address=179.185.178.133 list=BLOCK-BGP
add address=179.185.178.170 list=BLOCK-BGP
add address=179.185.180.176 list=BLOCK-BGP
add address=179.185.184.215 list=BLOCK-BGP
add address=179.185.185.74 list=BLOCK-BGP
add address=179.185.185.227 list=BLOCK-BGP
add address=179.185.189.87 list=BLOCK-BGP
add address=179.186.131.210 list=BLOCK-BGP
add address=179.186.137.99 list=BLOCK-BGP
add address=179.186.138.59 list=BLOCK-BGP
add address=179.186.142.77 list=BLOCK-BGP
add address=179.186.143.244 list=BLOCK-BGP
add address=180.150.179.27 list=BLOCK-BGP
add address=180.178.189.3 list=BLOCK-BGP
add address=180.178.189.12 list=BLOCK-BGP
add address=180.178.189.52 list=BLOCK-BGP
add address=180.183.173.254 list=BLOCK-BGP
add address=180.193.213.42 list=BLOCK-BGP
add address=180.211.158.122 list=BLOCK-BGP
add address=180.211.179.150 list=BLOCK-BGP
add address=180.211.191.94 list=BLOCK-BGP
add address=181.41.241.239 list=BLOCK-BGP
add address=181.49.36.124 list=BLOCK-BGP
add address=181.62.1.142 list=BLOCK-BGP
add address=181.111.175.234 list=BLOCK-BGP
add address=181.115.206.242 list=BLOCK-BGP
add address=181.129.51.147 list=BLOCK-BGP
add address=181.129.52.157 list=BLOCK-BGP
add address=181.129.59.108 list=BLOCK-BGP
add address=181.129.62.2 list=BLOCK-BGP
add address=181.129.62.67 list=BLOCK-BGP
add address=181.129.70.82 list=BLOCK-BGP
add address=181.129.74.58 list=BLOCK-BGP
add address=181.129.144.59 list=BLOCK-BGP
add address=181.137.131.157 list=BLOCK-BGP
add address=181.140.201.75 list=BLOCK-BGP
add address=181.141.1.250 list=BLOCK-BGP
add address=181.143.69.227 list=BLOCK-BGP
add address=181.166.106.224 list=BLOCK-BGP
add address=181.176.161.39 list=BLOCK-BGP
add address=181.176.221.151 list=BLOCK-BGP
add address=181.196.181.146 list=BLOCK-BGP
add address=181.197.137.169 list=BLOCK-BGP
add address=181.198.32.211 list=BLOCK-BGP
add address=181.209.99.204 list=BLOCK-BGP
add address=181.209.105.154 list=BLOCK-BGP
add address=181.209.117.53 list=BLOCK-BGP
add address=181.209.117.54 list=BLOCK-BGP
add address=181.231.81.239 list=BLOCK-BGP
add address=182.16.240.49 list=BLOCK-BGP
add address=182.23.4.130 list=BLOCK-BGP
add address=182.23.5.70 list=BLOCK-BGP
add address=182.48.83.170 list=BLOCK-BGP
add address=182.52.51.181 list=BLOCK-BGP
add address=182.53.200.46 list=BLOCK-BGP
add address=182.72.30.66 list=BLOCK-BGP
add address=182.73.143.146 list=BLOCK-BGP
add address=182.93.80.3 list=BLOCK-BGP
add address=182.134.157.200 list=BLOCK-BGP
add address=182.253.108.50 list=BLOCK-BGP
add address=182.253.141.25 list=BLOCK-BGP
add address=182.253.142.11 list=BLOCK-BGP
add address=182.253.192.186 list=BLOCK-BGP
add address=183.78.205.92 list=BLOCK-BGP
add address=183.87.39.174 list=BLOCK-BGP
add address=183.164.226.253 list=BLOCK-BGP
add address=183.164.254.8 list=BLOCK-BGP
add address=183.166.132.124 list=BLOCK-BGP
add address=184.174.97.57 list=BLOCK-BGP
add address=184.185.2.45 list=BLOCK-BGP
add address=184.185.2.244 list=BLOCK-BGP
add address=185.3.214.3 list=BLOCK-BGP
add address=185.5.246.222 list=BLOCK-BGP
add address=185.7.214.8 list=BLOCK-BGP
add address=185.7.214.50 list=BLOCK-BGP
add address=185.7.214.51 list=BLOCK-BGP
add address=185.7.214.57 list=BLOCK-BGP
add address=185.8.105.67 list=BLOCK-BGP
add address=185.11.61.15 list=BLOCK-BGP
add address=185.11.61.16 list=BLOCK-BGP
add address=185.17.134.149 list=BLOCK-BGP
add address=185.19.85.136 list=BLOCK-BGP
add address=185.19.85.143 list=BLOCK-BGP
add address=185.19.85.149 list=BLOCK-BGP
add address=185.19.85.154 list=BLOCK-BGP
add address=185.19.85.155 list=BLOCK-BGP
add address=185.19.85.160 list=BLOCK-BGP
add address=185.19.85.168 list=BLOCK-BGP
add address=185.19.85.177 list=BLOCK-BGP
add address=185.19.85.178 list=BLOCK-BGP
add address=185.22.62.29 list=BLOCK-BGP
add address=185.23.66.172 list=BLOCK-BGP
add address=185.27.60.83 list=BLOCK-BGP
add address=185.38.111.1 list=BLOCK-BGP
add address=185.39.17.122 list=BLOCK-BGP
add address=185.39.17.163 list=BLOCK-BGP
add address=185.39.19.20 list=BLOCK-BGP
add address=185.39.19.50 list=BLOCK-BGP
add address=185.39.19.51 list=BLOCK-BGP
add address=185.39.19.132 list=BLOCK-BGP
add address=185.39.19.133 list=BLOCK-BGP
add address=185.39.205.39 list=BLOCK-BGP
add address=185.42.12.21 list=BLOCK-BGP
add address=185.43.8.43 list=BLOCK-BGP
add address=185.44.81.114 list=BLOCK-BGP
add address=185.46.221.11 list=BLOCK-BGP
add address=185.47.184.253 list=BLOCK-BGP
add address=185.49.38.25 list=BLOCK-BGP
add address=185.51.92.108 list=BLOCK-BGP
add address=185.61.92.207 list=BLOCK-BGP
add address=185.65.135.234 list=BLOCK-BGP
add address=185.66.59.209 list=BLOCK-BGP
add address=185.66.228.149 list=BLOCK-BGP
add address=185.68.93.120 list=BLOCK-BGP
add address=185.75.5.158 list=BLOCK-BGP
add address=185.77.169.26 list=BLOCK-BGP
add address=185.79.156.23 list=BLOCK-BGP
add address=185.79.241.34 list=BLOCK-BGP
add address=185.81.68.147 list=BLOCK-BGP
add address=185.81.68.148 list=BLOCK-BGP
add address=185.81.157.7 list=BLOCK-BGP
add address=185.81.157.24 list=BLOCK-BGP
add address=185.81.157.239 list=BLOCK-BGP
add address=185.81.158.167 list=BLOCK-BGP
add address=185.82.98.73 list=BLOCK-BGP
add address=185.82.216.45 list=BLOCK-BGP
add address=185.94.218.57 list=BLOCK-BGP
add address=185.94.219.160 list=BLOCK-BGP
add address=185.95.186.58 list=BLOCK-BGP
add address=185.102.136.15 list=BLOCK-BGP
add address=185.102.136.132 list=BLOCK-BGP
add address=185.102.136.184 list=BLOCK-BGP
add address=185.105.109.19 list=BLOCK-BGP
add address=185.106.94.146 list=BLOCK-BGP
add address=185.117.153.176 list=BLOCK-BGP
add address=185.123.53.190 list=BLOCK-BGP
add address=185.123.143.247 list=BLOCK-BGP
add address=185.125.50.8 list=BLOCK-BGP
add address=185.132.17.160 list=BLOCK-BGP
add address=185.134.96.34 list=BLOCK-BGP
add address=185.134.99.238 list=BLOCK-BGP
add address=185.140.101.28 list=BLOCK-BGP
add address=185.141.62.123 list=BLOCK-BGP
add address=185.141.63.120 list=BLOCK-BGP
add address=185.147.125.145 list=BLOCK-BGP
add address=185.147.125.146 list=BLOCK-BGP
add address=185.147.125.147 list=BLOCK-BGP
add address=185.149.146.45 list=BLOCK-BGP
add address=185.153.199.164 list=BLOCK-BGP
add address=185.153.199.168 list=BLOCK-BGP
add address=185.153.199.169 list=BLOCK-BGP
add address=185.156.72.27 list=BLOCK-BGP
add address=185.156.72.43 list=BLOCK-BGP
add address=185.156.72.58 list=BLOCK-BGP
add address=185.156.72.61 list=BLOCK-BGP
add address=185.156.72.72 list=BLOCK-BGP
add address=185.156.72.96 list=BLOCK-BGP
add address=185.156.73.37 list=BLOCK-BGP
add address=185.161.248.127 list=BLOCK-BGP
add address=185.162.141.236 list=BLOCK-BGP
add address=185.163.45.70 list=BLOCK-BGP
add address=185.163.204.21 list=BLOCK-BGP
add address=185.163.204.22 list=BLOCK-BGP
add address=185.163.204.218 list=BLOCK-BGP
add address=185.163.204.229 list=BLOCK-BGP
add address=185.170.233.111 list=BLOCK-BGP
add address=185.172.129.215 list=BLOCK-BGP
add address=185.173.36.78 list=BLOCK-BGP
add address=185.173.37.131 list=BLOCK-BGP
add address=185.178.220.126 list=BLOCK-BGP
add address=185.181.10.208 list=BLOCK-BGP
add address=185.186.142.166 list=BLOCK-BGP
add address=185.186.245.130 list=BLOCK-BGP
add address=185.186.246.70 list=BLOCK-BGP
add address=185.186.246.102 list=BLOCK-BGP
add address=185.186.247.18 list=BLOCK-BGP
add address=185.186.247.62 list=BLOCK-BGP
add address=185.193.89.5 list=BLOCK-BGP
add address=185.193.143.98 list=BLOCK-BGP
add address=185.196.11.155 list=BLOCK-BGP
add address=185.198.234.185 list=BLOCK-BGP
add address=185.202.93.201 list=BLOCK-BGP
add address=185.203.116.7 list=BLOCK-BGP
add address=185.205.210.40 list=BLOCK-BGP
add address=185.207.137.113 list=BLOCK-BGP
add address=185.208.100.72 list=BLOCK-BGP
add address=185.212.139.40 list=BLOCK-BGP
add address=185.213.156.226 list=BLOCK-BGP
add address=185.215.113.10 list=BLOCK-BGP
add address=185.215.113.16 list=BLOCK-BGP
add address=185.215.113.17 list=BLOCK-BGP
add address=185.215.113.29 list=BLOCK-BGP
add address=185.215.113.35 list=BLOCK-BGP
add address=185.215.113.36 list=BLOCK-BGP
add address=185.215.113.38 list=BLOCK-BGP
add address=185.215.113.39 list=BLOCK-BGP
add address=185.215.113.42 list=BLOCK-BGP
add address=185.215.113.43 list=BLOCK-BGP
add address=185.215.113.58 list=BLOCK-BGP
add address=185.215.113.59 list=BLOCK-BGP
add address=185.215.113.64 list=BLOCK-BGP
add address=185.215.113.68 list=BLOCK-BGP
add address=185.215.113.70 list=BLOCK-BGP
add address=185.215.113.71 list=BLOCK-BGP
add address=185.215.113.83 list=BLOCK-BGP
add address=185.215.113.84 list=BLOCK-BGP
add address=185.215.113.94 list=BLOCK-BGP
add address=185.215.113.115 list=BLOCK-BGP
add address=185.215.113.205 list=BLOCK-BGP
add address=185.215.113.206 list=BLOCK-BGP
add address=185.215.113.208 list=BLOCK-BGP
add address=185.215.113.209 list=BLOCK-BGP
add address=185.215.113.217 list=BLOCK-BGP
add address=185.218.29.222 list=BLOCK-BGP
add address=185.219.168.29 list=BLOCK-BGP
add address=185.220.86.47 list=BLOCK-BGP
add address=185.220.101.182 list=BLOCK-BGP
add address=185.220.102.253 list=BLOCK-BGP
add address=185.220.221.78 list=BLOCK-BGP
add address=185.225.74.251 list=BLOCK-BGP
add address=185.227.152.245 list=BLOCK-BGP
add address=185.228.234.51 list=BLOCK-BGP
add address=185.237.8.38 list=BLOCK-BGP
add address=185.241.102.1 list=BLOCK-BGP
add address=185.243.96.27 list=BLOCK-BGP
add address=185.243.96.28 list=BLOCK-BGP
add address=185.243.96.39 list=BLOCK-BGP
add address=185.243.96.54 list=BLOCK-BGP
add address=185.243.96.103 list=BLOCK-BGP
add address=185.243.96.115 list=BLOCK-BGP
add address=185.243.98.2 list=BLOCK-BGP
add address=185.243.98.3 list=BLOCK-BGP
add address=185.243.98.4 list=BLOCK-BGP
add address=185.243.98.5 list=BLOCK-BGP
add address=185.244.183.229 list=BLOCK-BGP
add address=185.246.220.60 list=BLOCK-BGP
add address=185.248.140.40 list=BLOCK-BGP
add address=185.250.151.72 list=BLOCK-BGP
add address=185.251.91.235 list=BLOCK-BGP
add address=186.3.38.200 list=BLOCK-BGP
add address=186.6.32.238 list=BLOCK-BGP
add address=186.6.34.48 list=BLOCK-BGP
add address=186.6.38.210 list=BLOCK-BGP
add address=186.6.43.222 list=BLOCK-BGP
add address=186.6.45.193 list=BLOCK-BGP
add address=186.6.47.25 list=BLOCK-BGP
add address=186.6.48.56 list=BLOCK-BGP
add address=186.6.49.14 list=BLOCK-BGP
add address=186.6.50.143 list=BLOCK-BGP
add address=186.6.53.35 list=BLOCK-BGP
add address=186.6.58.154 list=BLOCK-BGP
add address=186.6.61.83 list=BLOCK-BGP
add address=186.6.197.105 list=BLOCK-BGP
add address=186.6.200.155 list=BLOCK-BGP
add address=186.6.203.26 list=BLOCK-BGP
add address=186.6.205.22 list=BLOCK-BGP
add address=186.6.210.61 list=BLOCK-BGP
add address=186.6.215.82 list=BLOCK-BGP
add address=186.6.215.234 list=BLOCK-BGP
add address=186.6.220.28 list=BLOCK-BGP
add address=186.6.221.217 list=BLOCK-BGP
add address=186.6.222.20 list=BLOCK-BGP
add address=186.6.222.84 list=BLOCK-BGP
add address=186.6.223.70 list=BLOCK-BGP
add address=186.6.242.231 list=BLOCK-BGP
add address=186.6.244.121 list=BLOCK-BGP
add address=186.6.246.252 list=BLOCK-BGP
add address=186.6.247.58 list=BLOCK-BGP
add address=186.6.249.106 list=BLOCK-BGP
add address=186.7.38.172 list=BLOCK-BGP
add address=186.7.65.151 list=BLOCK-BGP
add address=186.7.66.64 list=BLOCK-BGP
add address=186.7.66.127 list=BLOCK-BGP
add address=186.7.68.30 list=BLOCK-BGP
add address=186.7.68.44 list=BLOCK-BGP
add address=186.7.68.90 list=BLOCK-BGP
add address=186.7.70.240 list=BLOCK-BGP
add address=186.7.73.137 list=BLOCK-BGP
add address=186.7.78.47 list=BLOCK-BGP
add address=186.7.79.99 list=BLOCK-BGP
add address=186.7.83.104 list=BLOCK-BGP
add address=186.7.84.63 list=BLOCK-BGP
add address=186.7.85.125 list=BLOCK-BGP
add address=186.7.87.0 list=BLOCK-BGP
add address=186.7.91.45 list=BLOCK-BGP
add address=186.7.94.255 list=BLOCK-BGP
add address=186.7.95.215 list=BLOCK-BGP
add address=186.7.95.250 list=BLOCK-BGP
add address=186.7.134.174 list=BLOCK-BGP
add address=186.7.136.44 list=BLOCK-BGP
add address=186.7.136.88 list=BLOCK-BGP
add address=186.7.136.117 list=BLOCK-BGP
add address=186.7.136.162 list=BLOCK-BGP
add address=186.7.136.181 list=BLOCK-BGP
add address=186.7.137.243 list=BLOCK-BGP
add address=186.7.138.185 list=BLOCK-BGP
add address=186.7.138.231 list=BLOCK-BGP
add address=186.7.139.88 list=BLOCK-BGP
add address=186.7.141.203 list=BLOCK-BGP
add address=186.7.142.212 list=BLOCK-BGP
add address=186.7.144.198 list=BLOCK-BGP
add address=186.7.148.102 list=BLOCK-BGP
add address=186.7.152.199 list=BLOCK-BGP
add address=186.7.153.211 list=BLOCK-BGP
add address=186.7.154.193 list=BLOCK-BGP
add address=186.10.127.170 list=BLOCK-BGP
add address=186.53.35.50 list=BLOCK-BGP
add address=186.53.54.97 list=BLOCK-BGP
add address=186.84.174.13 list=BLOCK-BGP
add address=186.97.172.178 list=BLOCK-BGP
add address=186.105.105.158 list=BLOCK-BGP
add address=186.106.195.27 list=BLOCK-BGP
add address=186.106.196.192 list=BLOCK-BGP
add address=186.106.199.135 list=BLOCK-BGP
add address=186.106.200.24 list=BLOCK-BGP
add address=186.106.201.35 list=BLOCK-BGP
add address=186.106.201.49 list=BLOCK-BGP
add address=186.106.204.120 list=BLOCK-BGP
add address=186.106.207.201 list=BLOCK-BGP
add address=186.106.208.0 list=BLOCK-BGP
add address=186.106.208.52 list=BLOCK-BGP
add address=186.106.209.101 list=BLOCK-BGP
add address=186.106.212.175 list=BLOCK-BGP
add address=186.106.215.165 list=BLOCK-BGP
add address=186.106.219.200 list=BLOCK-BGP
add address=186.145.238.42 list=BLOCK-BGP
add address=186.146.26.151 list=BLOCK-BGP
add address=186.147.235.6 list=BLOCK-BGP
add address=186.150.207.141 list=BLOCK-BGP
add address=186.159.3.41 list=BLOCK-BGP
add address=186.188.224.208 list=BLOCK-BGP
add address=186.193.2.22 list=BLOCK-BGP
add address=186.194.119.205 list=BLOCK-BGP
add address=186.204.78.90 list=BLOCK-BGP
add address=186.210.39.221 list=BLOCK-BGP
add address=186.210.177.189 list=BLOCK-BGP
add address=186.211.83.6 list=BLOCK-BGP
add address=186.211.164.14 list=BLOCK-BGP
add address=186.211.199.118 list=BLOCK-BGP
add address=186.212.119.76 list=BLOCK-BGP
add address=186.212.119.117 list=BLOCK-BGP
add address=186.212.153.182 list=BLOCK-BGP
add address=186.212.247.54 list=BLOCK-BGP
add address=186.214.128.180 list=BLOCK-BGP
add address=186.214.129.146 list=BLOCK-BGP
add address=186.214.130.63 list=BLOCK-BGP
add address=186.219.96.12 list=BLOCK-BGP
add address=186.219.96.47 list=BLOCK-BGP
add address=186.219.210.86 list=BLOCK-BGP
add address=186.219.211.6 list=BLOCK-BGP
add address=186.219.215.69 list=BLOCK-BGP
add address=186.224.225.98 list=BLOCK-BGP
add address=186.225.45.13 list=BLOCK-BGP
add address=186.225.250.26 list=BLOCK-BGP
add address=186.233.59.88 list=BLOCK-BGP
add address=186.235.184.9 list=BLOCK-BGP
add address=186.235.184.194 list=BLOCK-BGP
add address=186.248.111.102 list=BLOCK-BGP
add address=186.249.83.86 list=BLOCK-BGP
add address=186.250.20.13 list=BLOCK-BGP
add address=186.250.162.161 list=BLOCK-BGP
add address=186.250.162.167 list=BLOCK-BGP
add address=186.251.208.148 list=BLOCK-BGP
add address=187.19.127.178 list=BLOCK-BGP
add address=187.19.150.221 list=BLOCK-BGP
add address=187.19.205.226 list=BLOCK-BGP
add address=187.33.70.110 list=BLOCK-BGP
add address=187.44.167.78 list=BLOCK-BGP
add address=187.59.112.164 list=BLOCK-BGP
add address=187.59.243.146 list=BLOCK-BGP
add address=187.60.41.252 list=BLOCK-BGP
add address=187.60.41.254 list=BLOCK-BGP
add address=187.62.191.3 list=BLOCK-BGP
add address=187.72.143.118 list=BLOCK-BGP
add address=187.72.239.185 list=BLOCK-BGP
add address=187.86.129.122 list=BLOCK-BGP
add address=187.95.112.36 list=BLOCK-BGP
add address=187.95.136.74 list=BLOCK-BGP
add address=187.95.181.225 list=BLOCK-BGP
add address=187.103.15.17 list=BLOCK-BGP
add address=187.103.232.26 list=BLOCK-BGP
add address=187.108.86.40 list=BLOCK-BGP
add address=187.109.37.53 list=BLOCK-BGP
add address=187.109.40.9 list=BLOCK-BGP
add address=187.114.211.162 list=BLOCK-BGP
add address=187.114.217.130 list=BLOCK-BGP
add address=187.115.176.105 list=BLOCK-BGP
add address=187.125.30.122 list=BLOCK-BGP
add address=187.130.139.197 list=BLOCK-BGP
add address=187.135.101.17 list=BLOCK-BGP
add address=187.141.129.86 list=BLOCK-BGP
add address=187.156.23.225 list=BLOCK-BGP
add address=187.156.30.31 list=BLOCK-BGP
add address=187.156.56.69 list=BLOCK-BGP
add address=187.156.70.181 list=BLOCK-BGP
add address=187.156.75.216 list=BLOCK-BGP
add address=187.156.85.139 list=BLOCK-BGP
add address=187.156.97.196 list=BLOCK-BGP
add address=187.156.102.13 list=BLOCK-BGP
add address=187.156.104.128 list=BLOCK-BGP
add address=187.156.104.174 list=BLOCK-BGP
add address=187.156.105.215 list=BLOCK-BGP
add address=187.156.106.84 list=BLOCK-BGP
add address=187.156.107.48 list=BLOCK-BGP
add address=187.156.114.189 list=BLOCK-BGP
add address=187.156.119.65 list=BLOCK-BGP
add address=187.156.121.116 list=BLOCK-BGP
add address=187.156.124.76 list=BLOCK-BGP
add address=187.156.125.180 list=BLOCK-BGP
add address=187.156.126.251 list=BLOCK-BGP
add address=187.156.128.15 list=BLOCK-BGP
add address=187.156.130.65 list=BLOCK-BGP
add address=187.156.130.149 list=BLOCK-BGP
add address=187.156.133.212 list=BLOCK-BGP
add address=187.156.134.27 list=BLOCK-BGP
add address=187.156.139.53 list=BLOCK-BGP
add address=187.156.149.9 list=BLOCK-BGP
add address=187.156.151.25 list=BLOCK-BGP
add address=187.157.23.243 list=BLOCK-BGP
add address=187.170.251.170 list=BLOCK-BGP
add address=187.170.252.73 list=BLOCK-BGP
add address=187.171.10.26 list=BLOCK-BGP
add address=187.201.69.159 list=BLOCK-BGP
add address=187.212.177.42 list=BLOCK-BGP
add address=187.212.177.121 list=BLOCK-BGP
add address=187.212.179.112 list=BLOCK-BGP
add address=187.212.179.214 list=BLOCK-BGP
add address=187.212.182.9 list=BLOCK-BGP
add address=187.212.182.122 list=BLOCK-BGP
add address=187.212.182.150 list=BLOCK-BGP
add address=187.212.182.199 list=BLOCK-BGP
add address=187.212.183.165 list=BLOCK-BGP
add address=187.212.184.57 list=BLOCK-BGP
add address=187.212.184.249 list=BLOCK-BGP
add address=187.212.186.104 list=BLOCK-BGP
add address=187.212.186.128 list=BLOCK-BGP
add address=187.212.186.132 list=BLOCK-BGP
add address=187.212.187.25 list=BLOCK-BGP
add address=187.212.187.167 list=BLOCK-BGP
add address=187.212.188.209 list=BLOCK-BGP
add address=187.212.188.238 list=BLOCK-BGP
add address=187.212.192.42 list=BLOCK-BGP
add address=187.212.193.238 list=BLOCK-BGP
add address=187.212.195.67 list=BLOCK-BGP
add address=187.212.202.41 list=BLOCK-BGP
add address=187.212.203.127 list=BLOCK-BGP
add address=187.212.207.225 list=BLOCK-BGP
add address=187.212.210.161 list=BLOCK-BGP
add address=187.212.210.212 list=BLOCK-BGP
add address=187.216.93.20 list=BLOCK-BGP
add address=187.225.0.160 list=BLOCK-BGP
add address=187.225.3.250 list=BLOCK-BGP
add address=187.232.144.122 list=BLOCK-BGP
add address=187.232.147.175 list=BLOCK-BGP
add address=187.232.149.70 list=BLOCK-BGP
add address=187.232.153.199 list=BLOCK-BGP
add address=187.232.154.120 list=BLOCK-BGP
add address=187.232.154.215 list=BLOCK-BGP
add address=187.232.156.69 list=BLOCK-BGP
add address=187.232.157.3 list=BLOCK-BGP
add address=187.232.159.124 list=BLOCK-BGP
add address=187.232.159.219 list=BLOCK-BGP
add address=187.232.162.44 list=BLOCK-BGP
add address=187.232.163.183 list=BLOCK-BGP
add address=187.232.164.174 list=BLOCK-BGP
add address=187.232.166.131 list=BLOCK-BGP
add address=187.232.167.41 list=BLOCK-BGP
add address=187.232.168.79 list=BLOCK-BGP
add address=187.232.170.114 list=BLOCK-BGP
add address=187.232.171.84 list=BLOCK-BGP
add address=187.232.172.69 list=BLOCK-BGP
add address=187.232.172.233 list=BLOCK-BGP
add address=187.232.174.152 list=BLOCK-BGP
add address=187.232.178.35 list=BLOCK-BGP
add address=187.232.178.100 list=BLOCK-BGP
add address=187.232.178.105 list=BLOCK-BGP
add address=187.232.179.184 list=BLOCK-BGP
add address=187.232.180.155 list=BLOCK-BGP
add address=187.232.181.140 list=BLOCK-BGP
add address=187.232.181.240 list=BLOCK-BGP
add address=187.232.182.120 list=BLOCK-BGP
add address=187.232.182.170 list=BLOCK-BGP
add address=187.232.183.251 list=BLOCK-BGP
add address=187.232.185.34 list=BLOCK-BGP
add address=187.232.187.29 list=BLOCK-BGP
add address=187.232.187.59 list=BLOCK-BGP
add address=187.232.187.92 list=BLOCK-BGP
add address=187.232.188.10 list=BLOCK-BGP
add address=187.232.188.41 list=BLOCK-BGP
add address=187.232.190.142 list=BLOCK-BGP
add address=187.232.193.96 list=BLOCK-BGP
add address=187.232.198.157 list=BLOCK-BGP
add address=187.232.198.249 list=BLOCK-BGP
add address=187.232.199.140 list=BLOCK-BGP
add address=187.232.199.213 list=BLOCK-BGP
add address=187.232.200.37 list=BLOCK-BGP
add address=187.232.202.182 list=BLOCK-BGP
add address=187.232.204.116 list=BLOCK-BGP
add address=187.232.204.164 list=BLOCK-BGP
add address=187.232.206.20 list=BLOCK-BGP
add address=187.232.207.3 list=BLOCK-BGP
add address=187.232.207.159 list=BLOCK-BGP
add address=187.232.207.199 list=BLOCK-BGP
add address=187.232.209.210 list=BLOCK-BGP
add address=187.232.211.171 list=BLOCK-BGP
add address=187.232.212.239 list=BLOCK-BGP
add address=187.232.213.143 list=BLOCK-BGP
add address=187.232.215.169 list=BLOCK-BGP
add address=187.232.215.191 list=BLOCK-BGP
add address=187.232.216.138 list=BLOCK-BGP
add address=187.232.216.228 list=BLOCK-BGP
add address=187.232.219.32 list=BLOCK-BGP
add address=187.232.221.207 list=BLOCK-BGP
add address=187.232.221.239 list=BLOCK-BGP
add address=187.232.222.135 list=BLOCK-BGP
add address=187.232.223.25 list=BLOCK-BGP
add address=187.232.223.72 list=BLOCK-BGP
add address=187.232.224.65 list=BLOCK-BGP
add address=187.232.224.75 list=BLOCK-BGP
add address=187.232.225.132 list=BLOCK-BGP
add address=187.232.226.38 list=BLOCK-BGP
add address=187.232.226.199 list=BLOCK-BGP
add address=187.232.229.163 list=BLOCK-BGP
add address=187.232.230.196 list=BLOCK-BGP
add address=187.232.231.59 list=BLOCK-BGP
add address=187.232.234.20 list=BLOCK-BGP
add address=187.232.235.85 list=BLOCK-BGP
add address=187.232.237.16 list=BLOCK-BGP
add address=187.232.240.149 list=BLOCK-BGP
add address=187.232.240.240 list=BLOCK-BGP
add address=187.232.241.90 list=BLOCK-BGP
add address=187.232.243.149 list=BLOCK-BGP
add address=187.232.244.43 list=BLOCK-BGP
add address=187.232.246.220 list=BLOCK-BGP
add address=187.232.247.37 list=BLOCK-BGP
add address=187.232.247.181 list=BLOCK-BGP
add address=187.232.250.140 list=BLOCK-BGP
add address=187.232.250.156 list=BLOCK-BGP
add address=187.232.251.130 list=BLOCK-BGP
add address=187.233.1.91 list=BLOCK-BGP
add address=187.233.3.74 list=BLOCK-BGP
add address=187.233.8.3 list=BLOCK-BGP
add address=187.233.8.133 list=BLOCK-BGP
add address=187.233.11.51 list=BLOCK-BGP
add address=187.233.14.97 list=BLOCK-BGP
add address=187.233.16.223 list=BLOCK-BGP
add address=187.233.16.252 list=BLOCK-BGP
add address=187.233.18.99 list=BLOCK-BGP
add address=187.233.18.115 list=BLOCK-BGP
add address=187.233.22.8 list=BLOCK-BGP
add address=187.233.22.34 list=BLOCK-BGP
add address=187.233.22.107 list=BLOCK-BGP
add address=187.233.22.193 list=BLOCK-BGP
add address=187.233.23.90 list=BLOCK-BGP
add address=187.233.23.105 list=BLOCK-BGP
add address=187.233.24.123 list=BLOCK-BGP
add address=187.233.24.149 list=BLOCK-BGP
add address=187.233.28.137 list=BLOCK-BGP
add address=187.233.34.137 list=BLOCK-BGP
add address=187.233.37.33 list=BLOCK-BGP
add address=187.233.37.63 list=BLOCK-BGP
add address=187.233.39.191 list=BLOCK-BGP
add address=187.233.39.202 list=BLOCK-BGP
add address=187.233.42.86 list=BLOCK-BGP
add address=187.233.44.163 list=BLOCK-BGP
add address=187.233.47.179 list=BLOCK-BGP
add address=187.243.253.182 list=BLOCK-BGP
add address=188.34.130.40 list=BLOCK-BGP
add address=188.43.117.38 list=BLOCK-BGP
add address=188.48.73.125 list=BLOCK-BGP
add address=188.48.73.161 list=BLOCK-BGP
add address=188.48.84.213 list=BLOCK-BGP
add address=188.48.89.236 list=BLOCK-BGP
add address=188.48.91.105 list=BLOCK-BGP
add address=188.48.100.4 list=BLOCK-BGP
add address=188.48.112.44 list=BLOCK-BGP
add address=188.48.112.71 list=BLOCK-BGP
add address=188.48.117.29 list=BLOCK-BGP
add address=188.48.118.155 list=BLOCK-BGP
add address=188.48.124.55 list=BLOCK-BGP
add address=188.49.51.172 list=BLOCK-BGP
add address=188.49.54.132 list=BLOCK-BGP
add address=188.49.57.14 list=BLOCK-BGP
add address=188.49.61.182 list=BLOCK-BGP
add address=188.49.80.93 list=BLOCK-BGP
add address=188.49.84.232 list=BLOCK-BGP
add address=188.52.183.45 list=BLOCK-BGP
add address=188.52.184.174 list=BLOCK-BGP
add address=188.54.2.212 list=BLOCK-BGP
add address=188.54.6.152 list=BLOCK-BGP
add address=188.54.52.64 list=BLOCK-BGP
add address=188.54.55.168 list=BLOCK-BGP
add address=188.54.70.241 list=BLOCK-BGP
add address=188.54.71.131 list=BLOCK-BGP
add address=188.54.76.107 list=BLOCK-BGP
add address=188.54.78.171 list=BLOCK-BGP
add address=188.54.89.209 list=BLOCK-BGP
add address=188.54.90.130 list=BLOCK-BGP
add address=188.54.92.222 list=BLOCK-BGP
add address=188.54.103.232 list=BLOCK-BGP
add address=188.54.118.104 list=BLOCK-BGP
add address=188.54.120.203 list=BLOCK-BGP
add address=188.54.120.215 list=BLOCK-BGP
add address=188.54.122.79 list=BLOCK-BGP
add address=188.54.125.57 list=BLOCK-BGP
add address=188.54.126.161 list=BLOCK-BGP
add address=188.55.84.200 list=BLOCK-BGP
add address=188.55.87.4 list=BLOCK-BGP
add address=188.55.88.30 list=BLOCK-BGP
add address=188.55.110.246 list=BLOCK-BGP
add address=188.75.139.60 list=BLOCK-BGP
add address=188.95.20.138 list=BLOCK-BGP
add address=188.95.20.139 list=BLOCK-BGP
add address=188.119.30.75 list=BLOCK-BGP
add address=188.119.30.83 list=BLOCK-BGP
add address=188.119.149.83 list=BLOCK-BGP
add address=188.132.146.23 list=BLOCK-BGP
add address=188.133.138.197 list=BLOCK-BGP
add address=188.133.158.145 list=BLOCK-BGP
add address=188.133.160.22 list=BLOCK-BGP
add address=188.136.167.33 list=BLOCK-BGP
add address=188.163.170.130 list=BLOCK-BGP
add address=188.168.27.71 list=BLOCK-BGP
add address=188.170.189.26 list=BLOCK-BGP
add address=188.172.93.164 list=BLOCK-BGP
add address=188.255.208.246 list=BLOCK-BGP
add address=188.255.209.21 list=BLOCK-BGP
add address=188.255.209.149 list=BLOCK-BGP
add address=188.255.213.97 list=BLOCK-BGP
add address=189.2.127.243 list=BLOCK-BGP
add address=189.14.194.113 list=BLOCK-BGP
add address=189.15.67.178 list=BLOCK-BGP
add address=189.15.69.5 list=BLOCK-BGP
add address=189.16.7.2 list=BLOCK-BGP
add address=189.41.45.95 list=BLOCK-BGP
add address=189.41.49.132 list=BLOCK-BGP
add address=189.41.147.28 list=BLOCK-BGP
add address=189.41.192.249 list=BLOCK-BGP
add address=189.44.178.170 list=BLOCK-BGP
add address=189.45.172.74 list=BLOCK-BGP
add address=189.90.63.122 list=BLOCK-BGP
add address=189.91.100.50 list=BLOCK-BGP
add address=189.113.217.35 list=BLOCK-BGP
add address=189.115.168.237 list=BLOCK-BGP
add address=189.115.171.237 list=BLOCK-BGP
add address=189.115.172.241 list=BLOCK-BGP
add address=189.124.138.137 list=BLOCK-BGP
add address=189.129.57.220 list=BLOCK-BGP
add address=189.129.92.173 list=BLOCK-BGP
add address=189.129.103.73 list=BLOCK-BGP
add address=189.129.103.121 list=BLOCK-BGP
add address=189.129.105.161 list=BLOCK-BGP
add address=189.129.107.116 list=BLOCK-BGP
add address=189.129.109.111 list=BLOCK-BGP
add address=189.129.110.155 list=BLOCK-BGP
add address=189.129.113.216 list=BLOCK-BGP
add address=189.129.114.216 list=BLOCK-BGP
add address=189.129.115.119 list=BLOCK-BGP
add address=189.129.115.168 list=BLOCK-BGP
add address=189.129.135.205 list=BLOCK-BGP
add address=189.129.151.241 list=BLOCK-BGP
add address=189.129.156.211 list=BLOCK-BGP
add address=189.129.157.43 list=BLOCK-BGP
add address=189.129.195.244 list=BLOCK-BGP
add address=189.129.196.81 list=BLOCK-BGP
add address=189.129.197.221 list=BLOCK-BGP
add address=189.129.201.61 list=BLOCK-BGP
add address=189.129.205.43 list=BLOCK-BGP
add address=189.129.207.124 list=BLOCK-BGP
add address=189.141.138.172 list=BLOCK-BGP
add address=189.148.114.70 list=BLOCK-BGP
add address=189.148.254.230 list=BLOCK-BGP
add address=189.150.158.178 list=BLOCK-BGP
add address=189.161.255.112 list=BLOCK-BGP
add address=189.164.246.75 list=BLOCK-BGP
add address=189.164.252.30 list=BLOCK-BGP
add address=189.165.13.241 list=BLOCK-BGP
add address=189.165.15.160 list=BLOCK-BGP
add address=189.165.31.82 list=BLOCK-BGP
add address=189.165.34.138 list=BLOCK-BGP
add address=189.165.46.173 list=BLOCK-BGP
add address=189.165.48.132 list=BLOCK-BGP
add address=189.165.52.227 list=BLOCK-BGP
add address=189.165.53.172 list=BLOCK-BGP
add address=189.165.55.98 list=BLOCK-BGP
add address=189.165.58.240 list=BLOCK-BGP
add address=189.165.63.252 list=BLOCK-BGP
add address=189.165.65.90 list=BLOCK-BGP
add address=189.165.73.30 list=BLOCK-BGP
add address=189.165.74.164 list=BLOCK-BGP
add address=189.165.83.252 list=BLOCK-BGP
add address=189.165.94.67 list=BLOCK-BGP
add address=189.165.98.148 list=BLOCK-BGP
add address=189.165.113.137 list=BLOCK-BGP
add address=189.165.114.216 list=BLOCK-BGP
add address=189.165.116.53 list=BLOCK-BGP
add address=189.165.164.10 list=BLOCK-BGP
add address=189.191.4.105 list=BLOCK-BGP
add address=189.191.8.50 list=BLOCK-BGP
add address=189.191.21.149 list=BLOCK-BGP
add address=189.191.26.156 list=BLOCK-BGP
add address=189.191.30.175 list=BLOCK-BGP
add address=189.198.210.234 list=BLOCK-BGP
add address=189.199.106.202 list=BLOCK-BGP
add address=189.201.191.17 list=BLOCK-BGP
add address=189.225.195.118 list=BLOCK-BGP
add address=189.225.205.16 list=BLOCK-BGP
add address=189.232.6.62 list=BLOCK-BGP
add address=189.232.7.18 list=BLOCK-BGP
add address=189.232.7.72 list=BLOCK-BGP
add address=189.232.9.20 list=BLOCK-BGP
add address=189.232.17.78 list=BLOCK-BGP
add address=189.232.18.171 list=BLOCK-BGP
add address=189.232.28.78 list=BLOCK-BGP
add address=189.232.46.17 list=BLOCK-BGP
add address=189.232.46.130 list=BLOCK-BGP
add address=189.232.62.153 list=BLOCK-BGP
add address=189.238.133.149 list=BLOCK-BGP
add address=189.238.214.236 list=BLOCK-BGP
add address=189.238.239.222 list=BLOCK-BGP
add address=189.239.28.115 list=BLOCK-BGP
add address=189.250.5.7 list=BLOCK-BGP
add address=189.250.11.123 list=BLOCK-BGP
add address=189.250.18.212 list=BLOCK-BGP
add address=189.250.21.146 list=BLOCK-BGP
add address=189.250.30.113 list=BLOCK-BGP
add address=189.250.36.93 list=BLOCK-BGP
add address=189.250.37.250 list=BLOCK-BGP
add address=189.250.60.167 list=BLOCK-BGP
add address=189.250.64.31 list=BLOCK-BGP
add address=189.250.67.102 list=BLOCK-BGP
add address=189.250.75.180 list=BLOCK-BGP
add address=189.250.88.176 list=BLOCK-BGP
add address=189.250.93.144 list=BLOCK-BGP
add address=189.250.130.241 list=BLOCK-BGP
add address=189.250.142.123 list=BLOCK-BGP
add address=189.250.144.221 list=BLOCK-BGP
add address=189.250.150.127 list=BLOCK-BGP
add address=189.250.171.58 list=BLOCK-BGP
add address=189.250.171.114 list=BLOCK-BGP
add address=189.250.179.86 list=BLOCK-BGP
add address=189.250.210.227 list=BLOCK-BGP
add address=189.253.1.101 list=BLOCK-BGP
add address=189.253.3.197 list=BLOCK-BGP
add address=189.253.4.94 list=BLOCK-BGP
add address=189.253.8.194 list=BLOCK-BGP
add address=189.253.8.223 list=BLOCK-BGP
add address=189.253.9.219 list=BLOCK-BGP
add address=189.253.12.12 list=BLOCK-BGP
add address=189.253.14.53 list=BLOCK-BGP
add address=189.253.21.11 list=BLOCK-BGP
add address=189.253.24.19 list=BLOCK-BGP
add address=189.253.26.184 list=BLOCK-BGP
add address=189.253.30.42 list=BLOCK-BGP
add address=189.253.30.63 list=BLOCK-BGP
add address=189.253.37.198 list=BLOCK-BGP
add address=189.253.41.44 list=BLOCK-BGP
add address=189.253.80.93 list=BLOCK-BGP
add address=189.253.85.136 list=BLOCK-BGP
add address=189.253.85.153 list=BLOCK-BGP
add address=190.2.210.116 list=BLOCK-BGP
add address=190.2.215.210 list=BLOCK-BGP
add address=190.9.216.98 list=BLOCK-BGP
add address=190.13.84.221 list=BLOCK-BGP
add address=190.14.32.209 list=BLOCK-BGP
add address=190.14.213.45 list=BLOCK-BGP
add address=190.15.252.205 list=BLOCK-BGP
add address=190.26.201.194 list=BLOCK-BGP
add address=190.43.145.172 list=BLOCK-BGP
add address=190.53.46.11 list=BLOCK-BGP
add address=190.54.100.74 list=BLOCK-BGP
add address=190.85.65.50 list=BLOCK-BGP
add address=190.92.72.242 list=BLOCK-BGP
add address=190.104.1.19 list=BLOCK-BGP
add address=190.107.133.19 list=BLOCK-BGP
add address=190.109.72.236 list=BLOCK-BGP
add address=190.109.74.1 list=BLOCK-BGP
add address=190.109.168.241 list=BLOCK-BGP
add address=190.117.206.153 list=BLOCK-BGP
add address=190.120.254.17 list=BLOCK-BGP
add address=190.121.142.158 list=BLOCK-BGP
add address=190.128.135.130 list=BLOCK-BGP
add address=190.135.3.75 list=BLOCK-BGP
add address=190.140.74.43 list=BLOCK-BGP
add address=190.140.218.10 list=BLOCK-BGP
add address=190.140.246.135 list=BLOCK-BGP
add address=190.141.72.142 list=BLOCK-BGP
add address=190.141.173.77 list=BLOCK-BGP
add address=190.141.221.166 list=BLOCK-BGP
add address=190.141.222.206 list=BLOCK-BGP
add address=190.144.91.252 list=BLOCK-BGP
add address=190.144.167.178 list=BLOCK-BGP
add address=190.145.255.246 list=BLOCK-BGP
add address=190.147.146.117 list=BLOCK-BGP
add address=190.147.156.126 list=BLOCK-BGP
add address=190.166.115.236 list=BLOCK-BGP
add address=190.166.129.67 list=BLOCK-BGP
add address=190.166.129.109 list=BLOCK-BGP
add address=190.166.130.208 list=BLOCK-BGP
add address=190.166.132.62 list=BLOCK-BGP
add address=190.166.133.76 list=BLOCK-BGP
add address=190.166.135.228 list=BLOCK-BGP
add address=190.166.136.241 list=BLOCK-BGP
add address=190.166.138.70 list=BLOCK-BGP
add address=190.166.139.145 list=BLOCK-BGP
add address=190.166.146.213 list=BLOCK-BGP
add address=190.166.146.221 list=BLOCK-BGP
add address=190.166.148.40 list=BLOCK-BGP
add address=190.166.151.188 list=BLOCK-BGP
add address=190.166.151.247 list=BLOCK-BGP
add address=190.166.153.216 list=BLOCK-BGP
add address=190.166.156.200 list=BLOCK-BGP
add address=190.166.159.187 list=BLOCK-BGP
add address=190.167.36.80 list=BLOCK-BGP
add address=190.167.36.127 list=BLOCK-BGP
add address=190.167.49.180 list=BLOCK-BGP
add address=190.167.51.201 list=BLOCK-BGP
add address=190.167.52.224 list=BLOCK-BGP
add address=190.167.53.176 list=BLOCK-BGP
add address=190.167.55.64 list=BLOCK-BGP
add address=190.167.60.174 list=BLOCK-BGP
add address=190.167.62.59 list=BLOCK-BGP
add address=190.167.62.76 list=BLOCK-BGP
add address=190.167.62.189 list=BLOCK-BGP
add address=190.167.63.67 list=BLOCK-BGP
add address=190.167.101.1 list=BLOCK-BGP
add address=190.167.102.64 list=BLOCK-BGP
add address=190.167.102.218 list=BLOCK-BGP
add address=190.167.103.47 list=BLOCK-BGP
add address=190.167.220.7 list=BLOCK-BGP
add address=190.180.35.148 list=BLOCK-BGP
add address=190.182.88.214 list=BLOCK-BGP
add address=190.184.201.146 list=BLOCK-BGP
add address=190.186.58.167 list=BLOCK-BGP
add address=190.186.216.196 list=BLOCK-BGP
add address=190.196.20.166 list=BLOCK-BGP
add address=190.210.3.210 list=BLOCK-BGP
add address=190.213.78.26 list=BLOCK-BGP
add address=190.216.56.1 list=BLOCK-BGP
add address=190.217.1.101 list=BLOCK-BGP
add address=190.218.13.32 list=BLOCK-BGP
add address=190.218.156.66 list=BLOCK-BGP
add address=190.219.118.147 list=BLOCK-BGP
add address=190.219.139.111 list=BLOCK-BGP
add address=190.219.225.108 list=BLOCK-BGP
add address=190.228.171.11 list=BLOCK-BGP
add address=190.228.171.254 list=BLOCK-BGP
add address=190.234.135.232 list=BLOCK-BGP
add address=190.237.219.96 list=BLOCK-BGP
add address=191.7.208.103 list=BLOCK-BGP
add address=191.7.209.74 list=BLOCK-BGP
add address=191.37.181.103 list=BLOCK-BGP
add address=191.54.51.14 list=BLOCK-BGP
add address=191.54.54.129 list=BLOCK-BGP
add address=191.55.202.28 list=BLOCK-BGP
add address=191.91.59.183 list=BLOCK-BGP
add address=191.97.2.198 list=BLOCK-BGP
add address=191.97.6.211 list=BLOCK-BGP
add address=191.97.9.189 list=BLOCK-BGP
add address=191.112.28.180 list=BLOCK-BGP
add address=191.232.38.25 list=BLOCK-BGP
add address=191.253.89.73 list=BLOCK-BGP
add address=192.36.119.61 list=BLOCK-BGP
add address=192.81.225.233 list=BLOCK-BGP
add address=192.109.200.250 list=BLOCK-BGP
add address=192.111.135.21 list=BLOCK-BGP
add address=192.111.146.185 list=BLOCK-BGP
add address=192.119.14.178 list=BLOCK-BGP
add address=192.140.42.83 list=BLOCK-BGP
add address=192.141.236.10 list=BLOCK-BGP
add address=192.158.15.201 list=BLOCK-BGP
add address=192.162.103.118 list=BLOCK-BGP
add address=192.169.69.26 list=BLOCK-BGP
add address=192.250.253.186 list=BLOCK-BGP
add address=192.254.79.67 list=BLOCK-BGP
add address=193.3.19.154 list=BLOCK-BGP
add address=193.9.28.13 list=BLOCK-BGP
add address=193.33.1.19 list=BLOCK-BGP
add address=193.35.18.171 list=BLOCK-BGP
add address=193.38.235.234 list=BLOCK-BGP
add address=193.42.32.29 list=BLOCK-BGP
add address=193.42.32.216 list=BLOCK-BGP
add address=193.42.33.252 list=BLOCK-BGP
add address=193.106.174.59 list=BLOCK-BGP
add address=193.106.174.121 list=BLOCK-BGP
add address=193.106.175.43 list=BLOCK-BGP
add address=193.106.175.78 list=BLOCK-BGP
add address=193.106.175.125 list=BLOCK-BGP
add address=193.106.175.148 list=BLOCK-BGP
add address=193.106.175.209 list=BLOCK-BGP
add address=193.106.175.214 list=BLOCK-BGP
add address=193.106.231.145 list=BLOCK-BGP
add address=193.109.42.114 list=BLOCK-BGP
add address=193.109.42.117 list=BLOCK-BGP
add address=193.110.3.35 list=BLOCK-BGP
add address=193.110.3.74 list=BLOCK-BGP
add address=193.110.3.108 list=BLOCK-BGP
add address=193.142.146.203 list=BLOCK-BGP
add address=193.142.146.212 list=BLOCK-BGP
add address=193.142.147.59 list=BLOCK-BGP
add address=193.143.1.5 list=BLOCK-BGP
add address=193.149.3.239 list=BLOCK-BGP
add address=193.201.9.43 list=BLOCK-BGP
add address=193.201.9.240 list=BLOCK-BGP
add address=193.228.139.230 list=BLOCK-BGP
add address=193.228.161.10 list=BLOCK-BGP
add address=193.233.18.36 list=BLOCK-BGP
add address=193.233.18.52 list=BLOCK-BGP
add address=193.233.20.2 list=BLOCK-BGP
add address=193.233.20.14 list=BLOCK-BGP
add address=193.233.20.26 list=BLOCK-BGP
add address=193.233.20.29 list=BLOCK-BGP
add address=193.233.20.36 list=BLOCK-BGP
add address=193.233.132.12 list=BLOCK-BGP
add address=193.233.255.9 list=BLOCK-BGP
add address=193.233.255.73 list=BLOCK-BGP
add address=193.239.86.248 list=BLOCK-BGP
add address=193.239.147.212 list=BLOCK-BGP
add address=193.239.151.135 list=BLOCK-BGP
add address=194.5.178.163 list=BLOCK-BGP
add address=194.28.91.10 list=BLOCK-BGP
add address=194.38.0.163 list=BLOCK-BGP
add address=194.38.20.21 list=BLOCK-BGP
add address=194.44.172.254 list=BLOCK-BGP
add address=194.53.137.213 list=BLOCK-BGP
add address=194.55.224.10 list=BLOCK-BGP
add address=194.55.224.11 list=BLOCK-BGP
add address=194.55.224.15 list=BLOCK-BGP
add address=194.67.210.183 list=BLOCK-BGP
add address=194.85.124.150 list=BLOCK-BGP
add address=194.87.82.7 list=BLOCK-BGP
add address=194.87.185.8 list=BLOCK-BGP
add address=194.87.214.252 list=BLOCK-BGP
add address=194.109.206.212 list=BLOCK-BGP
add address=194.135.33.149 list=BLOCK-BGP
add address=194.228.129.189 list=BLOCK-BGP
add address=194.244.16.58 list=BLOCK-BGP
add address=195.9.89.66 list=BLOCK-BGP
add address=195.10.205.157 list=BLOCK-BGP
add address=195.13.188.150 list=BLOCK-BGP
add address=195.22.152.90 list=BLOCK-BGP
add address=195.24.236.70 list=BLOCK-BGP
add address=195.29.106.2 list=BLOCK-BGP
add address=195.29.155.98 list=BLOCK-BGP
add address=195.58.19.193 list=BLOCK-BGP
add address=195.82.146.131 list=BLOCK-BGP
add address=195.85.201.65 list=BLOCK-BGP
add address=195.93.173.24 list=BLOCK-BGP
add address=195.123.211.56 list=BLOCK-BGP
add address=195.133.40.111 list=BLOCK-BGP
add address=195.133.45.137 list=BLOCK-BGP
add address=195.133.65.16 list=BLOCK-BGP
add address=195.178.120.183 list=BLOCK-BGP
add address=195.178.136.10 list=BLOCK-BGP
add address=195.178.136.15 list=BLOCK-BGP
add address=195.222.40.54 list=BLOCK-BGP
add address=195.248.242.249 list=BLOCK-BGP
add address=196.0.111.194 list=BLOCK-BGP
add address=196.2.13.12 list=BLOCK-BGP
add address=196.6.234.140 list=BLOCK-BGP
add address=196.15.247.74 list=BLOCK-BGP
add address=196.25.237.218 list=BLOCK-BGP
add address=196.43.106.62 list=BLOCK-BGP
add address=196.63.180.183 list=BLOCK-BGP
add address=196.202.215.143 list=BLOCK-BGP
add address=196.216.12.21 list=BLOCK-BGP
add address=196.251.81.139 list=BLOCK-BGP
add address=196.251.85.220 list=BLOCK-BGP
add address=196.251.89.33 list=BLOCK-BGP
add address=196.251.90.190 list=BLOCK-BGP
add address=196.251.92.11 list=BLOCK-BGP
add address=196.251.115.29 list=BLOCK-BGP
add address=197.210.130.18 list=BLOCK-BGP
add address=197.232.21.22 list=BLOCK-BGP
add address=197.232.47.102 list=BLOCK-BGP
add address=197.246.255.203 list=BLOCK-BGP
add address=197.248.190.170 list=BLOCK-BGP
add address=197.250.15.58 list=BLOCK-BGP
add address=197.251.233.122 list=BLOCK-BGP
add address=198.15.145.62 list=BLOCK-BGP
add address=198.15.146.55 list=BLOCK-BGP
add address=198.15.146.58 list=BLOCK-BGP
add address=198.15.211.123 list=BLOCK-BGP
add address=198.23.177.219 list=BLOCK-BGP
add address=198.27.98.247 list=BLOCK-BGP
add address=198.50.242.157 list=BLOCK-BGP
add address=198.55.98.114 list=BLOCK-BGP
add address=198.55.120.84 list=BLOCK-BGP
add address=198.98.52.213 list=BLOCK-BGP
add address=198.98.54.161 list=BLOCK-BGP
add address=198.98.56.129 list=BLOCK-BGP
add address=198.105.164.114 list=BLOCK-BGP
add address=198.105.164.118 list=BLOCK-BGP
add address=198.144.229.143 list=BLOCK-BGP
add address=199.33.121.202 list=BLOCK-BGP
add address=199.187.19.185 list=BLOCK-BGP
add address=199.195.251.190 list=BLOCK-BGP
add address=199.217.98.159 list=BLOCK-BGP
add address=199.232.33.211 list=BLOCK-BGP
add address=200.0.247.83 list=BLOCK-BGP
add address=200.0.247.86 list=BLOCK-BGP
add address=200.5.203.58 list=BLOCK-BGP
add address=200.17.134.35 list=BLOCK-BGP
add address=200.24.157.116 list=BLOCK-BGP
add address=200.27.110.28 list=BLOCK-BGP
add address=200.34.227.204 list=BLOCK-BGP
add address=200.41.150.83 list=BLOCK-BGP
add address=200.48.13.26 list=BLOCK-BGP
add address=200.48.129.124 list=BLOCK-BGP
add address=200.52.144.170 list=BLOCK-BGP
add address=200.54.221.202 list=BLOCK-BGP
add address=200.55.247.3 list=BLOCK-BGP
add address=200.70.19.85 list=BLOCK-BGP
add address=200.81.144.33 list=BLOCK-BGP
add address=200.85.95.234 list=BLOCK-BGP
add address=200.85.137.46 list=BLOCK-BGP
add address=200.111.182.6 list=BLOCK-BGP
add address=200.115.157.211 list=BLOCK-BGP
add address=200.119.125.194 list=BLOCK-BGP
add address=200.146.229.129 list=BLOCK-BGP
add address=200.181.51.41 list=BLOCK-BGP
add address=200.188.151.212 list=BLOCK-BGP
add address=200.199.8.113 list=BLOCK-BGP
add address=200.218.242.33 list=BLOCK-BGP
add address=200.218.242.85 list=BLOCK-BGP
add address=200.218.242.89 list=BLOCK-BGP
add address=200.225.140.130 list=BLOCK-BGP
add address=200.233.233.223 list=BLOCK-BGP
add address=201.103.144.49 list=BLOCK-BGP
add address=201.103.191.181 list=BLOCK-BGP
add address=201.103.204.1 list=BLOCK-BGP
add address=201.106.37.254 list=BLOCK-BGP
add address=201.124.17.199 list=BLOCK-BGP
add address=201.124.21.34 list=BLOCK-BGP
add address=201.124.21.227 list=BLOCK-BGP
add address=201.124.27.118 list=BLOCK-BGP
add address=201.124.33.88 list=BLOCK-BGP
add address=201.124.33.166 list=BLOCK-BGP
add address=201.124.70.40 list=BLOCK-BGP
add address=201.124.70.53 list=BLOCK-BGP
add address=201.124.71.222 list=BLOCK-BGP
add address=201.124.75.40 list=BLOCK-BGP
add address=201.124.78.68 list=BLOCK-BGP
add address=201.158.106.71 list=BLOCK-BGP
add address=201.174.10.170 list=BLOCK-BGP
add address=201.174.104.222 list=BLOCK-BGP
add address=201.184.75.210 list=BLOCK-BGP
add address=201.184.130.194 list=BLOCK-BGP
add address=201.184.135.155 list=BLOCK-BGP
add address=201.184.159.28 list=BLOCK-BGP
add address=201.184.239.74 list=BLOCK-BGP
add address=201.188.242.40 list=BLOCK-BGP
add address=201.188.245.153 list=BLOCK-BGP
add address=201.188.246.9 list=BLOCK-BGP
add address=201.188.249.143 list=BLOCK-BGP
add address=201.188.249.153 list=BLOCK-BGP
add address=201.188.250.241 list=BLOCK-BGP
add address=201.218.120.117 list=BLOCK-BGP
add address=201.218.121.197 list=BLOCK-BGP
add address=201.218.252.239 list=BLOCK-BGP
add address=201.219.204.73 list=BLOCK-BGP
add address=201.219.217.70 list=BLOCK-BGP
add address=201.220.128.92 list=BLOCK-BGP
add address=201.240.86.63 list=BLOCK-BGP
add address=202.5.37.241 list=BLOCK-BGP
add address=202.51.114.210 list=BLOCK-BGP
add address=202.51.118.42 list=BLOCK-BGP
add address=202.51.122.163 list=BLOCK-BGP
add address=202.51.178.126 list=BLOCK-BGP
add address=202.52.248.254 list=BLOCK-BGP
add address=202.55.175.237 list=BLOCK-BGP
add address=202.57.2.19 list=BLOCK-BGP
add address=202.57.37.197 list=BLOCK-BGP
add address=202.62.99.170 list=BLOCK-BGP
add address=202.70.34.82 list=BLOCK-BGP
add address=202.72.209.3 list=BLOCK-BGP
add address=202.79.40.97 list=BLOCK-BGP
add address=202.91.89.129 list=BLOCK-BGP
add address=202.91.188.81 list=BLOCK-BGP
add address=202.124.46.97 list=BLOCK-BGP
add address=202.129.196.242 list=BLOCK-BGP
add address=202.131.234.142 list=BLOCK-BGP
add address=202.136.88.68 list=BLOCK-BGP
add address=202.141.235.34 list=BLOCK-BGP
add address=202.141.242.3 list=BLOCK-BGP
add address=202.142.158.114 list=BLOCK-BGP
add address=202.144.201.193 list=BLOCK-BGP
add address=202.146.245.156 list=BLOCK-BGP
add address=202.166.205.87 list=BLOCK-BGP
add address=202.168.146.99 list=BLOCK-BGP
add address=202.168.146.109 list=BLOCK-BGP
add address=202.168.146.121 list=BLOCK-BGP
add address=202.168.146.126 list=BLOCK-BGP
add address=202.168.154.11 list=BLOCK-BGP
add address=202.169.51.46 list=BLOCK-BGP
add address=202.182.54.186 list=BLOCK-BGP
add address=202.182.59.188 list=BLOCK-BGP
add address=203.76.103.117 list=BLOCK-BGP
add address=203.77.237.62 list=BLOCK-BGP
add address=203.77.239.201 list=BLOCK-BGP
add address=203.78.141.235 list=BLOCK-BGP
add address=203.114.124.203 list=BLOCK-BGP
add address=203.124.53.122 list=BLOCK-BGP
add address=203.145.171.102 list=BLOCK-BGP
add address=203.154.232.25 list=BLOCK-BGP
add address=203.170.67.157 list=BLOCK-BGP
add address=203.170.67.237 list=BLOCK-BGP
add address=203.170.68.97 list=BLOCK-BGP
add address=203.170.222.4 list=BLOCK-BGP
add address=203.177.133.235 list=BLOCK-BGP
add address=203.189.156.47 list=BLOCK-BGP
add address=203.192.217.11 list=BLOCK-BGP
add address=203.202.253.186 list=BLOCK-BGP
add address=203.215.181.218 list=BLOCK-BGP
add address=203.215.181.222 list=BLOCK-BGP
add address=204.93.183.99 list=BLOCK-BGP
add address=204.101.61.82 list=BLOCK-BGP
add address=205.185.119.191 list=BLOCK-BGP
add address=205.185.126.88 list=BLOCK-BGP
add address=206.2.151.253 list=BLOCK-BGP
add address=206.2.199.55 list=BLOCK-BGP
add address=206.2.207.185 list=BLOCK-BGP
add address=206.2.208.41 list=BLOCK-BGP
add address=206.161.97.117 list=BLOCK-BGP
add address=206.161.97.118 list=BLOCK-BGP
add address=206.161.217.58 list=BLOCK-BGP
add address=206.161.217.60 list=BLOCK-BGP
add address=206.161.217.62 list=BLOCK-BGP
add address=206.161.217.66 list=BLOCK-BGP
add address=206.189.176.78 list=BLOCK-BGP
add address=206.233.167.137 list=BLOCK-BGP
add address=206.233.167.151 list=BLOCK-BGP
add address=206.233.168.146 list=BLOCK-BGP
add address=206.233.170.132 list=BLOCK-BGP
add address=206.233.170.142 list=BLOCK-BGP
add address=206.233.203.61 list=BLOCK-BGP
add address=206.237.208.223 list=BLOCK-BGP
add address=207.38.84.195 list=BLOCK-BGP
add address=207.56.42.6 list=BLOCK-BGP
add address=207.60.19.238 list=BLOCK-BGP
add address=207.60.200.70 list=BLOCK-BGP
add address=207.60.223.22 list=BLOCK-BGP
add address=208.118.63.215 list=BLOCK-BGP
add address=209.16.78.27 list=BLOCK-BGP
add address=209.59.216.75 list=BLOCK-BGP
add address=209.59.216.85 list=BLOCK-BGP
add address=209.59.222.242 list=BLOCK-BGP
add address=209.127.73.212 list=BLOCK-BGP
add address=209.141.51.43 list=BLOCK-BGP
add address=209.166.175.201 list=BLOCK-BGP
add address=210.48.139.228 list=BLOCK-BGP
add address=210.48.204.134 list=BLOCK-BGP
add address=210.123.10.200 list=BLOCK-BGP
add address=210.207.244.101 list=BLOCK-BGP
add address=210.245.51.5 list=BLOCK-BGP
add address=210.245.51.14 list=BLOCK-BGP
add address=210.245.51.33 list=BLOCK-BGP
add address=210.245.51.76 list=BLOCK-BGP
add address=210.245.92.63 list=BLOCK-BGP
add address=211.53.202.252 list=BLOCK-BGP
add address=211.108.106.8 list=BLOCK-BGP
add address=211.229.47.232 list=BLOCK-BGP
add address=211.244.109.130 list=BLOCK-BGP
add address=212.8.242.211 list=BLOCK-BGP
add address=212.23.193.108 list=BLOCK-BGP
add address=212.33.240.140 list=BLOCK-BGP
add address=212.34.239.253 list=BLOCK-BGP
add address=212.46.230.102 list=BLOCK-BGP
add address=212.56.194.238 list=BLOCK-BGP
add address=212.95.148.53 list=BLOCK-BGP
add address=212.113.106.211 list=BLOCK-BGP
add address=212.113.119.69 list=BLOCK-BGP
add address=212.114.52.24 list=BLOCK-BGP
add address=212.115.232.79 list=BLOCK-BGP
add address=212.118.39.77 list=BLOCK-BGP
add address=212.118.41.216 list=BLOCK-BGP
add address=212.154.23.82 list=BLOCK-BGP
add address=212.154.74.212 list=BLOCK-BGP
add address=212.192.246.178 list=BLOCK-BGP
add address=212.193.30.21 list=BLOCK-BGP
add address=212.193.30.54 list=BLOCK-BGP
add address=212.193.30.181 list=BLOCK-BGP
add address=212.193.62.48 list=BLOCK-BGP
add address=212.237.5.209 list=BLOCK-BGP
add address=213.0.92.122 list=BLOCK-BGP
add address=213.6.28.66 list=BLOCK-BGP
add address=213.6.36.146 list=BLOCK-BGP
add address=213.6.66.66 list=BLOCK-BGP
add address=213.6.199.94 list=BLOCK-BGP
add address=213.6.221.162 list=BLOCK-BGP
add address=213.14.25.65 list=BLOCK-BGP
add address=213.32.252.221 list=BLOCK-BGP
add address=213.80.166.5 list=BLOCK-BGP
add address=213.108.18.72 list=BLOCK-BGP
add address=213.109.6.85 list=BLOCK-BGP
add address=213.138.77.238 list=BLOCK-BGP
add address=213.163.126.100 list=BLOCK-BGP
add address=213.178.155.86 list=BLOCK-BGP
add address=213.192.1.171 list=BLOCK-BGP
add address=213.222.34.200 list=BLOCK-BGP
add address=213.226.100.108 list=BLOCK-BGP
add address=213.252.245.221 list=BLOCK-BGP
add address=216.83.42.142 list=BLOCK-BGP
add address=216.122.175.114 list=BLOCK-BGP
add address=216.127.113.58 list=BLOCK-BGP
add address=216.215.125.178 list=BLOCK-BGP
add address=217.15.195.141 list=BLOCK-BGP
add address=217.21.89.67 list=BLOCK-BGP
add address=217.25.198.133 list=BLOCK-BGP
add address=217.25.221.60 list=BLOCK-BGP
add address=217.60.36.45 list=BLOCK-BGP
add address=217.60.195.34 list=BLOCK-BGP
add address=217.145.199.45 list=BLOCK-BGP
add address=217.145.199.112 list=BLOCK-BGP
add address=217.146.88.139 list=BLOCK-BGP
add address=217.160.78.166 list=BLOCK-BGP
add address=217.196.96.11 list=BLOCK-BGP
add address=218.24.16.198 list=BLOCK-BGP
add address=218.29.188.128 list=BLOCK-BGP
add address=218.51.156.7 list=BLOCK-BGP
add address=218.106.167.98 list=BLOCK-BGP
add address=218.108.31.28 list=BLOCK-BGP
add address=218.185.234.194 list=BLOCK-BGP
add address=218.233.73.202 list=BLOCK-BGP
add address=219.83.51.152 list=BLOCK-BGP
add address=219.93.178.162 list=BLOCK-BGP
add address=219.147.112.150 list=BLOCK-BGP
add address=219.234.82.72 list=BLOCK-BGP
add address=219.234.82.75 list=BLOCK-BGP
add address=219.234.82.76 list=BLOCK-BGP
add address=219.234.82.77 list=BLOCK-BGP
add address=219.234.82.79 list=BLOCK-BGP
add address=219.234.82.80 list=BLOCK-BGP
add address=220.112.40.251 list=BLOCK-BGP
add address=220.113.1.73 list=BLOCK-BGP
add address=220.127.244.50 list=BLOCK-BGP
add address=221.121.12.238 list=BLOCK-BGP
add address=221.164.151.43 list=BLOCK-BGP
add address=221.164.151.208 list=BLOCK-BGP
add address=221.194.47.218 list=BLOCK-BGP
add address=221.229.204.124 list=BLOCK-BGP
add address=222.129.33.141 list=BLOCK-BGP
add address=222.129.35.9 list=BLOCK-BGP
add address=222.129.36.157 list=BLOCK-BGP
add address=222.158.197.138 list=BLOCK-BGP
add address=222.165.194.68 list=BLOCK-BGP
add address=222.165.205.154 list=BLOCK-BGP
add address=222.173.92.154 list=BLOCK-BGP
add address=222.191.243.187 list=BLOCK-BGP
add address=222.211.72.29 list=BLOCK-BGP
add address=222.217.68.17 list=BLOCK-BGP
add address=222.252.23.5 list=BLOCK-BGP
add address=223.100.166.3 list=BLOCK-BGP
add address=223.165.243.209 list=BLOCK-BGP
