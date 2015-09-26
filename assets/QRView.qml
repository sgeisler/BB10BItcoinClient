import bb.cascades 1.4
import bb.cascades.multimedia 1.2

Sheet {
    Page {
        id: qrView
        titleBar: TitleBar {
            title: "19rLRcPERDmx66jyWonosTHXrFyeftr8qH"
            dismissAction: ActionItem {
                title: "Close"
                onTriggered: {
                    close();
                }
            }
        }
        Container {
            QrCodeView {
                data: "19rLRcPERDmx66jyWonosTHXrFyeftr8qH"
                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Fill
                preferredWidth: 700.0
                preferredHeight: 700.0

            }
        }
    }
}
