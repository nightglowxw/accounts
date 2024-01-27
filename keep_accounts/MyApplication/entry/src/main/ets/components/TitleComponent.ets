@Component
export default  struct TitleComponent {
  @Prop title:string
  isBack:Boolean = false
  build() {
    Flex({justifyContent:FlexAlign.SpaceBetween,alignItems:ItemAlign.Center}){
      Image(this.isBack ? $r('app.media.Button_left') : "")
        .width(44)
        .height(44)
        .objectFit(ImageFit.ScaleDown)
      Text(this.title)
        .fontColor('rgb(1,23,73)')
        .fontWeight(700)
        .fontSize(20)
      Text('')
        .width(44)
        .height(44)
    }
    .padding({left:20,right:20,top:12,bottom:12})
  }
}