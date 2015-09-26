import bb.cascades 1.4
import bb.cascades.multimedia 1.2

Tab {
    imageSource: "icons/ic_lock.png"
    Page {
        titleBar: TitleBar {
            title: "WalletName"
            acceptAction: ActionItem {
                imageSource: "icons/ic_reload.png"
            }
        }
        
        actions: [
            ActionItem {
                title: "send BTC"
                imageSource: "icons/ic_forward.png"
                ActionBar.placement: ActionBarPlacement.OnBar
                onTriggered: {
                    sendSheet.createObject().open();
                }
            }
        ]
        
        Container {
            Container {
                horizontalAlignment: HorizontalAlignment.Fill
                layout: GridLayout {
    
                }
                topPadding: 20.0
                leftPadding: 20.0
                bottomPadding: 20.0
                rightPadding: 20.0
                Container {
                    horizontalAlignment: HorizontalAlignment.Center

                    preferredHeight: 250.0
                    layout: DockLayout {

                    }
                    Container {
                        bottomMargin: 20.0
                        horizontalAlignment: HorizontalAlignment.Center
                        Label {
                            text: "Address:"
                            textStyle.fontSize: FontSize.XSmall
                        }
                        Label {
                            text: "19rLRcPERDmx\n66jyWonosTHX\nrFyeftr8qH"
                            textStyle.fontFamily: "Monospace"

                            multiline: true
                            textStyle.fontSize: FontSize.Small
                        }
                    }
                    Button {
                        text: "Copy to clipboard"
                        verticalAlignment: VerticalAlignment.Bottom
                    }
                }

                Container {
                    layout: DockLayout {

                    }
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    QrCodeView {
                        data: "19rLRcPERDmx66jyWonosTHXrFyeftr8qH"
                        verticalAlignment: VerticalAlignment.Fill
                        horizontalAlignment: HorizontalAlignment.Center
                        preferredWidth: 250.0
                        preferredHeight: 250.0
                    }
                    ImageButton {
                        verticalAlignment: VerticalAlignment.Fill
                        horizontalAlignment: HorizontalAlignment.Fill
                        onClicked: {
                            qrView.createObject().open();
                        }
                    }                    
                }
                
            }
            Container {
                horizontalAlignment: HorizontalAlignment.Fill
                topMargin: 20.0
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    text: "123 mBTC"
                    textStyle.fontSize: FontSize.XLarge
                }
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    text: "24.60 €"
                }
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    text: "(unconfirmed: 20 mBTC ≈ 4€)"
                    textStyle.fontSize: FontSize.XSmall

                }
            }
        }

    }
    attachedObjects: [
        ComponentDefinition {
             id: qrView
             source: "QRView.qml"
        },
        ComponentDefinition {
             id: sendSheet
             source: "Send.qml"
        }
    ]
}