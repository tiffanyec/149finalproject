import logging
import sys
import time

import cflib.crtp
from cflib.crazyflie import Crazyflie
from cflib.crazyflie.syncCrazyflie import SyncCrazyflie
from cflib.positioning.motion_commander import MotionCommander
from cflib.utils.multiranger import Multiranger

URI = 'radio://0/80/2M'

if len(sys.argv) > 1:
    URI = sys.argv[1]

# Only output errors from the logging framework
logging.basicConfig(level=logging.ERROR)

if __name__ == '__main__':
    # Initialize the low-level drivers (don't list the debug drivers)
    cflib.crtp.init_drivers(enable_debug_driver=False)

    cf = Crazyflie(rw_cache='./cache')
    with SyncCrazyflie(URI, cf=cf) as scf:

        print("Connected to %s" % URI)

        print("Sending thrust 45000")
        cf.commander.send_setpoint(0, 0, 0, 45000)
        time.sleep(0.5)
        cf.commander.send_hover_setpoint(0,0, 0, 2)
        time.sleep(0.5)
        cf.param.set_value("flightmode.althold", "True")
        print("Stopping thrust; hovering")
        # cf.commander.send_setpoint(0, 0, 0, 32767)

        time.sleep(1)

        print('Closing')
        cf.commander.send_setpoint(0, 0, 0, 0)

        # time.sleep(0.1)

    print('Demo terminated!')
