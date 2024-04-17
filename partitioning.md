# Proces tworzenia nowego filesystemu 

1. Dodanie fizycznego dysku do maszyny
2. Tworzymy nowy PV na zasobie dyskowym (`pvcreate`)
3. Tworzymy lub rozszerzamy VG groupę (`vgcreate`/`vgextend`)
4. Tworzymy lub rozszerzamy LV wolumen (`lvextend`/`xfs_growfs` lub `lvresize -r`)
5. Tworzymy filesystem na nowym LV (`mkfs.xfs`/`mkfs.ext4`)
6. Tworzymy mountpoint np. `mkdir /part1`
7. Edytujemy `/etc/fstab` i dopisujemy wpis do urządzenia blokowego
8. Test i montowanie z `mount -a`

W przypadku SWAP-a używamy `swapon -a` zamiast `mount -a`.
