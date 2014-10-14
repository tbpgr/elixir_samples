ips=<<255,255,255,0,192,168,1,1,172,16,1,1>>
for <<first_octet::8, second_octet::8, third_octed::8, forth_octed::8 <- ips>>, do: IO.inspect {first_octet, second_octet, third_octed, forth_octed}
for <<first_octet::4, second_octet::4, third_octed::4, forth_octed::4 <- ips>>, do: IO.inspect {first_octet, second_octet, third_octed, forth_octed}
