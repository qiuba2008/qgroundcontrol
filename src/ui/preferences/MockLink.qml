/*=====================================================================

 QGroundControl Open Source Ground Control Station

 (c) 2009 - 2015 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>

 This file is part of the QGROUNDCONTROL project

 QGROUNDCONTROL is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 QGROUNDCONTROL is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with QGROUNDCONTROL. If not, see <http://www.gnu.org/licenses/>.

 ======================================================================*/

import QtQuick 2.3

import QGroundControl               1.0
import QGroundControl.Controls      1.0
import QGroundControl.Palette       1.0
import QGroundControl.ScreenTools   1.0

Rectangle {
    color:          qgcPal.window
    anchors.fill:   parent

    QGCPalette { id: qgcPal; colorGroupEnabled: true }

    QGCFlickable {
        anchors.fill:   parent
        contentWidth:   column.width
        contentHeight:  column.height
        clip:           true

        Column {
            id:                 column
            anchors.margins:    ScreenTools.defaultFontPixelHeight
            anchors.left:       parent.left
            anchors.top:        parent.top
            spacing:            ScreenTools.defaultFontPixelHeight

            QGCButton {
                text:       "PX4 Vehicle"
                onClicked:  QGroundControl.startPX4MockLink(sendStatusText.checked)
            }
            QGCButton {
                text:       "APM ArduCopter Vehicle"
                onClicked:  QGroundControl.startAPMArduCopterMockLink(sendStatusText.checked)
            }
            QGCButton {
                text:       "APM ArduPlane Vehicle"
                onClicked:  QGroundControl.startAPMArduPlaneMockLink(sendStatusText.checked)
            }
            QGCButton {
                text:       "Generic Vehicle"
                onClicked:  QGroundControl.startGenericMockLink(sendStatusText.checked)
            }
            QGCCheckBox {
                id:     sendStatusText
                text:   "Send status text + voice"
            }
            QGCButton {
                text:       "Stop All MockLinks"
                onClicked:  QGroundControl.stopAllMockLinks()
            }
        }
    }
}
