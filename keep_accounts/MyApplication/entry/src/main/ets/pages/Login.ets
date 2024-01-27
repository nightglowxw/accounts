import router from '@ohos.router'
import Input from '../components/Input'
import TitleComponent from '../components/TitleComponent'

@Entry
@Component
struct Login {
  @State isRegister: boolean = false
  @State countDown: number = 60
  timer: number

  /**
   * 发送验证码
   */
  sendCode() {
    this.startCountDown()
  }

  /**
   * 开始倒计时
   */
  startCountDown() {
    this.timer = setInterval(() => {
      this.countDown -= 1
      if (this.countDown === 0) {
        this.countDown = 60
        clearInterval(this.timer)
      }
    }, 1000)
  }

  build() {
    Flex({ wrap: FlexWrap.Wrap, justifyContent: FlexAlign.Center }) {
      // 标题
      TitleComponent({ title: '登录' })

      // 内容
      Column() {
        Stack() {
          Image($r('app.media.Login'))
            .width(88)
            .height(88)
            .offset({ y: -44 })
        }

        Input({
          title: '电子邮箱',
          icon: $r('app.media.Email'),
          placeholder: '请输入您的邮箱'
        })

        Input({
          title: '密码',
          icon: $r('app.media.Password'),
          placeholder: '请输入您的密码',
          inputType: InputType.Password
        })
          .margin({ top: 20 })

        if (this.isRegister) {
          Column() {
            Text('验证码')
              .fontSize(16)
              .fontWeight(500)
              .fontColor($r('app.color.font_color'))
              .textAlign(TextAlign.Start)
              .width('100%')
              .margin({ bottom: 14 })
            Flex() {
              TextInput()
                .height(50)
                .margin({ right: 10 })
                .backgroundColor('#FBFBFD')
              Button(this.countDown == 60 ? '发送验证码' : `${this.countDown}s`)
                .onClick(() => {
                  if (this.countDown === 60) {
                    this.sendCode()
                  }
                })
            }
          }
          .margin({ top: 20 })

        }

        Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
          Text(this.isRegister ? '注册' : '登录')
            .fontColor(Color.White)
            .fontSize(17)
            .fontWeight(500)
        }
        .onClick(() => {
          router.replaceUrl({
            url: 'pages/MainPage/MainPage'
          })
        })
        .width(228)
        .height(50)
        .backgroundColor('#388FDA')
        .borderRadius(50)
        .margin({ top: 100 })

        Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
          Text(this.isRegister ? '去登录' : '去注册')
            .fontSize(17)
            .fontWeight(500)
        }
        .width(228)
        .height(50)
        .backgroundColor('#f4f9ff')
        .borderRadius(50)
        .margin({ top: 20 })
        .onClick(() => {
          this.isRegister = !this.isRegister
        })
      }
      .width('90%')
      .height('100%')
      .borderRadius(20)
      .backgroundColor(Color.White)
      .margin({ top: 44 })
      .padding({ right: 14, left: 14 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.base_background'))
  }
}