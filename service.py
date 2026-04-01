import os
import time
from tronpy import Tron

client = Tron()
addr = os.environ['ADDRESS']

while True:
    try:
        bal = client.get_account_balance(addr)
        print(f'Balance: {bal} TRX')
    except:
        pass
    time.sleep(30)