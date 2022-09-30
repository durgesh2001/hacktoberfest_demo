print("Welcome to Punjab National Bank ATM")
restart = 'y'
chances = 3
balance = 67.14
while chances >= 0:
    pin = int(input('Please enter your 4 digit pin: '))
    if pin == 7571:
        print('You entered your pin correctly\n')
        while restart not in ('n', 'NO''no', 'N'):
            print('Please press 1 for your balance\n')
            print('Please press 2  to make a withdrawal\n')
            print('Please press 3 to pay in\n')
            print('Please press 4 to return card\n')
            option = int(input('What would you like to choose?'))
            if option == 1:
                print('Your balance is A$', balance, '\n')
                restart = input('Would you like to go back? ')
                if restart in ('n', 'NO', 'no', 'N'):
                    print("Thank you")
                    break
            elif option == 2:
                option2 = 'y'
                withdrawal = float(input('How much would you like to withdrawal? \nA$10/A$20/A$40/A$60/A$80/A$100'))
                if withdrawal in [10, 20, 40, 60, 80, 100]:
                    balance = balance - withdrawal
                    print('\nYour balance is now A$', balance)
                    restart = input('Would you like to go back? ')
                    if restart in ('n', 'NO', 'no', 'N'):
                        print("Thank you")
                        break
                elif withdrawal != [10, 20, 40, 60, 80, 100]:
                    print('Invalid Amount, Please Re-try\n')
                    restart = 'y'
                elif withdrawal == 1:
                    withdrawal = float(input('Please Enter Desired amount:'))
            elif option == 3:
                Pay_in = float(input('How much Would You Like To Pay In? '))
                balance = balance + Pay_in
                print('\nYour Balance is now A$', balance)
                restart = input('Would you like to go back?')
                if restart in ('n', 'NO', 'no', 'N'):
                    print("Thank you")
                    break
            elif option == 4:
                print('Please wait whilst your card is Returned...\n')
                print('Thank you for your service')
                break
            else:
                print('Please enter a correct number. \n')
                restart = 'y'
    elif pin != '1234':
        print('Incorrect Password')
        chances = chances - 1
        if chances == 0:
            print('\nNo more tris')
            break