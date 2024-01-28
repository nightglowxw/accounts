import { NavItem } from '../Type'

@Component
export struct NavBarImage {
  // @StorageLink NavBarItem: NavItem
  NavBarItem: NavItem
  @Prop isSelect: boolean

  build() {
    Column() {
      Image(this.isSelect ? this.NavBarItem.selectImg : this.NavBarItem.normalImg)
        .size({ width: this.NavBarItem.qrCode ? 54 : 25, height: this.NavBarItem.qrCode ? 54 : 25 })
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
  }
}