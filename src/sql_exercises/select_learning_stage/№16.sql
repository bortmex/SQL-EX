SELECT distinct pc1.model, pc2.model, pc1.speed, pc1.ram FROM PC pc1
JOIN PC pc2 on pc1.speed = pc2.speed and pc1.ram = pc2.ram WHERE pc1.model>pc2.model;