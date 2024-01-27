@Component
export  default struct Input {
  @State isFocus:boolean = false

  title:string
  icon:Resource
  placeholder:string
  inputType:InputType = InputType.Normal

  build(){
    Column(){
      Text(this.title)
        .fontSize(16)
        .fontWeight(500)
        .fontColor($r('app.color.font_color'))
        .textAlign(TextAlign.Start)
        .width('100%')
        .margin({bottom:14})
      Flex({alignItems:ItemAlign.Center}){
        Image(this.icon)
          .width(40)
          .height(40)
        TextInput({
          placeholder:this.placeholder
        })
          .onFocus(()=>{
            this.isFocus = true
          })
          .onBlur(()=>{
            this.isFocus = false
          })
          .placeholderColor('rgba(0,40,132,0.6)')
          .backgroundColor(Color.White)
          .style(TextInputStyle.Inline)
          .width('100%')
          .type(this.inputType)
      }
        .width('100%')
        .height(50)
        .padding({left:10,right:10})
        .borderRadius(10)
        .border({width:this.isFocus ? 2:0,color:'#00284'})
    }
  }
}