from random import randint
player = input("Moi chon bao, bua, keo:")
computer = randint(0,2)
if computer == 0:
	computer = "bao"
elif computer == 1:
	computer = "bua"
else:
	computer = "keo"
a = 0
if (player != "bao" and player != "bua" and player != "keo"):
	a = 1
while (a==1):
	print("Chi duoc chon 'bao', 'bua', 'keo'")
	player = input()
	if (player != "bao" and player != "bua" and player != "keo"):
		a = 1
	else:
		a = 0
		
print("----------------")
print("Ban chon: ", player)
print("May chon: ", computer)
if player == computer:
	print("Ban hoa")
elif player == "bao":
	if computer == "bua":
		print("Ban thang")
	else:
		print("Ban thua")
elif player == "bua":
	if computer == "bao":
		print("Ban thua")
	else:
		print("Ban thang")
elif player == "keo":
	if computer == "bua":
		print("Ban thua")
	else:
		print("Ban thang")
print("----------------")
