from pip._vendor.distlib.compat import raw_input


def martingale(currencies, outs):
    lost = 0
    x = 1
    while True:
        lost = lost + currencies
        print("draw %s" % x)
        print("lost %s" % lost)
        while currencies * outs <= lost:
            currencies = currencies + 1
        print("next bet : %s in order to win %s for a profit of %s" % (
            currencies, currencies * outs, currencies * outs - lost))
        x = x + 1
        user_choice = raw_input("continue (c) / reset (r) : ")
        print("\n")
        if user_choice == "r":
            return


while True:
    print("================================================================")
    print("==================- dice martingale calculator -================")
    print("================================================================")
    current_bet = raw_input("initial_bet : ")
    payout = raw_input("payout : ")
    martingale(int(current_bet), int(payout))
