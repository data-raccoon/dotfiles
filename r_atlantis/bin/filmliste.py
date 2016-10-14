#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""filmliste.py

Generates a list of the movies, series etc.

"""

import os


def walk(path):
    res = []
    for root, dirs, files in os.walk(path):
        for name in files:
            res.append(name)
    return res


d = []
d.append("------------------------------------------------------------")
d.append("Filme")
d.append("------------------------------------------------------------")

a = []
a = a + os.listdir(r"/mnt/big1/videos/rip-movies")
a = a + os.listdir(r"/mnt/big1/videos/rip-harrypotter")
a = a + os.listdir(r"/mnt/big1/videos/dwnl-movies")

a = a + os.listdir(r"/mnt/big2/videos/dwnl-movies")
a = a + os.listdir(r"/mnt/big2/videos/dwnl-movies-new")
a = a + os.listdir(r"/mnt/big2/videos/rec-asterix-obelix")
a = a + os.listdir(r"/mnt/big2/videos/rec-edgarwallace")
a = a + os.listdir(r"/mnt/big2/videos/rec-harrypotter")
a = a + os.listdir(r"/mnt/big2/videos/rec-jamesbond")
a = a + os.listdir(r"/mnt/big2/videos/rec-movies(+)")
a = a + os.listdir(r"/mnt/big2/videos/rec-movies(family)")
a = a + os.listdir(r"/mnt/big2/videos/rec-rdy")
a = a + os.listdir(r"/mnt/big2/videos/rec-startrek-movies")

a = a + os.listdir(r"/home/stev/rec-rdy")
a.sort()

d = d + a
d.append("")
d.append("Insgesamt " + str(len(a)) + " Filme.")
d.append("")
d.append("------------------------------------------------------------")
d.append("Reportagen")
d.append("------------------------------------------------------------")

c = []
c = c + os.listdir(r"/mnt/big1/videos/rip-reports")

c = c + os.listdir(r"/mnt/big2/videos/rec-reports")
c = c + os.listdir(r"/mnt/big2/videos/dwnl-reports")
c.sort()

d = d + c
d.append("")
d.append("Insgesamt " + str(len(c)) + " Reportagen.")
d.append("")
d.append("------------------------------------------------------------")
d.append("Serien")
d.append("------------------------------------------------------------")

b = []
b = b + walk(r"/mnt/big1/videos/dwnl-series")

b = b + walk(r"/mnt/big2/videos/rec-series")
b = b + walk(r"/mnt/big2/videos/rec-stargate")
b = b + walk(r"/mnt/big2/videos/rec-startrek-series")
b = b + walk(r"/mnt/big2/videos/dwnl-series")
b.sort()
d = d + b
d.append("")
d.append("Insgesamt " + str(len(b)-2) + " Episoden aus Serien.")
d.append("")
d.append("mehr Infos auf http://www.imdb.com/")
f = open('Filmliste.txt', 'w')
for value in d:
    f.write(value+"\n")
f.close()
