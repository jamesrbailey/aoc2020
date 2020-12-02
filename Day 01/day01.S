# AOC2020 Day 1 in RISC-V assembly
# Assembled and running on the Venus instruction set simulator
# This is the dumb nested loop solution with quadratic complexity
# J.Bailey

main:
    li    a0, 4          # 4 - print_str
    la    a1, intro_text
    ecall
    # setting up input data bounds
    la    a2,input_start
    la    a3,input_end
    sub   a3,a3,a2
    mv    a2,x0
    
    li    a0,1  # 1 - print_int

    la    a4,input_start
loop_a:
    add   a5,a4,a2
    lw    t0,0(a5)
    addi  a6,a2,4
loop_b:
    add   a5,a4,a6
    lw    t1,0(a5)
# check if is match
    add   t2,t0,t1
    addi  t2,t2,-2020
    beqz  t2,exit
    addi  a6,a6,4
    ble   a6,a3,loop_b
# end loop_b
    addi  a2,a2,4
    ble   a2,a3,loop_a
# end loop_a

exit:
    mv    a1,t0
    ecall
    mv    a1,t1
    ecall
    mul   a1,t0,t1
    ecall

addi  a0, x0, 10     # 10 - exit
ecall

.data
intro_text:
    .asciiz "aoc2020 day 1"

input_start:
    .word 1211
    .word 1698
    .word 1787
    .word 1947
    .word 1888
    .word 444
    .word 1819
    .word 1890
    .word 1940
    .word 1884
    .word 1917
    .word 1814
    .word 1724
    .word 1561
    .word 1823
    .word 1266
    .word 1982
    .word 1826
    .word 1871
    .word 1692
    .word 1665
    .word 1081
    .word 1847
    .word 640
    .word 1861
    .word 1632
    .word 1916
    .word 1921
    .word 1450
    .word 1806
    .word 1950
    .word 1969
    .word 1757
    .word 1766
    .word 1799
    .word 422
    .word 1865
    .word 1934
    .word 1954
    .word 1640
    .word 1743
    .word 1812
    .word 1745
    .word 1574
    .word 1904
    .word 1510
    .word 1491
    .word 1977
    .word 1727
    .word 1979
    .word 1842
    .word 1784
    .word 1655
    .word 1991
    .word 1296
    .word 1849
    .word 1863
    .word 1886
    .word 1696
    .word 1716
    .word 1679
    .word 1848
    .word 1540
    .word 1780
    .word 1926
    .word 1986
    .word 1898
    .word 1448
    .word 315
    .word 1568
    .word 1869
    .word 1875
    .word 2010
    .word 1268
    .word 1892
    .word 1248
    .word 1746
    .word 1987
    .word 1963
    .word 20
    .word 1575
    .word 1827
    .word 1653
    .word 1851
    .word 1365
    .word 1599
    .word 1688
    .word 1943
    .word 1677
    .word 1320
    .word 154
    .word 1490
    .word 1737
    .word 1573
    .word 1908
    .word 1667
    .word 1151
    .word 1761
    .word 1587
    .word 1924
    .word 1941
    .word 1731
    .word 1669
    .word 1857
    .word 1723
    .word 1880
    .word 1970
    .word 1791
    .word 1928
    .word 1942
    .word 1816
    .word 1989
    .word 1832
    .word 1911
    .word 1711
    .word 1817
    .word 1893
    .word 896
    .word 1998
    .word 1720
    .word 317
    .word 1964
    .word 1379
    .word 1750
    .word 1971
    .word 1322
    .word 1992
    .word 1347
    .word 1608
    .word 1373
    .word 1668
    .word 1252
    .word 373
    .word 1968
    .word 1754
    .word 1709
    .word 1988
    .word 1946
    .word 1537
    .word 1758
    .word 1830
    .word 624
    .word 1694
    .word 1914
    .word 1867
    .word 1145
    .word 1973
    .word 1769
    .word 1773
    .word 1424
    .word 1777
    .word 1659
    .word 1789
    .word 1907
    .word 1201
    .word 1967
    .word 1682
    .word 1952
    .word 1978
    .word 1937
    .word 1974
    .word 1488
    .word 1896
    .word 1657
    .word 1420
    .word 1935
    .word 1778
    .word 1822
    .word 1703
    .word 2003
    .word 119
    .word 1149
    .word 1732
    .word 1878
    .word 1938
    .word 1918
    .word 1797
    .word 1836
    .word 1741
    .word 1579
    .word 1589
    .word 1999
    .word 1772
    .word 1853
    .word 1793
    .word 1768
    .word 1759
    .word 1216
    .word 1765
    .word 1944
    .word 1735
    .word 1580
    .word 1756
    .word 1308
    .word 1786
    .word 1962
    .word 1981
    .word 1156
    .word 1948
    .word 1894
input_end: