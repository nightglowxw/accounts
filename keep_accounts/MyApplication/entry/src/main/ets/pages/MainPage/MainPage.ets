import NavBar from './components/NavBar'

@Entry
@Component
struct MainPage {
  build() {
    Column() {
      //    底部导航栏
      NavBar()
    }
    .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r('app.color.base_background'))
  }
}