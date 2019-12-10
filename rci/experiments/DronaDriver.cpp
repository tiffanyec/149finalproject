#include <iostream>

#include "PX4Driver.h"

using namespace std;

#define SIMULATOR_PORT 14550

int main(int argc, char const *argv[])
{
    vector<WS_Coord> destinations;
    ifstream pathFile("path.txt");
    if (!pathFile) {
        cout << "Couldn't open path.txt\n";
        return 1;
    }
    while (!pathFile.eof()) {
        float x, y, z;
        pathFile >> x >> y >> z;
        destinations.push_back(WS_Coord(x,y,z));
    }

    InitializeLogger();
    PX4API *px4 = new PX4API(SIMULATOR_PORT);
    char filename[] = "traj.csv";
    PX4Logger *px4logger = new PX4Logger(10, filename, true, vector<bool>{true, true, true});

    usleep(2500000);
    px4->Arm();
    usleep(2500000);
    px4->TakeoffGlobal(5);
    usleep(5000000);

    const WS_Coord &first = destinations[0];
    px4->StartAutopilot(first.x, first.y, -first.z);
    usleep(5000000);

    px4->GoTo(first.x, first.y, -first.z, 1);

    px4logger->Start();

    for (int i = 1; i < destinations.size(); i++)
    {
        const WS_Coord &gotoLocation = destinations[i];
        px4->GoTo(gotoLocation.x, gotoLocation.y, -gotoLocation.z, 1);
    }

    px4logger->Stop();
    px4logger->ToCSV();

	return 0;
}
