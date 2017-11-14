//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package ai_crn.simulations.SingleHop_MANET.UsingCSMACAwithNoRTS;

import inet.node.inet.WirelessHost;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.common.lifecycle.LifecycleController;

network UsingCSMACAwithNoRTS
{
    parameters:
        int numHosts;
        string radioMediumType;
    submodules:
        host[numHosts]: WirelessHost {
            parameters:
        		@display("i=device/cellphone"); // @display("r=,,#707070;p=250,58");
        }        
        configurator: IPv4NetworkConfigurator {
            parameters:
                @display("p=100,150");
        }
        radioMedium: <radioMediumType> like IRadioMedium {
            parameters:
                @display("p=100,250");
        }        
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            parameters:
                @display("p=100,50");
        }
        lifecycleController: LifecycleController {
            parameters:
                @display("p=100,350");
        }
}
