@Observed
export class NavItem {
  /**
   * 选中的图片
   */
  selectImg: Resource
  /**
   * 默认的图片
   */
  normalImg: Resource
  /**
   * 样式小调
   */
  x: number
  /**
   * 是否是二维码
   */
  qrCode: boolean

  isSelect:boolean = false

  constructor(selectImg: Resource, normalImg: Resource, x: number, qrCode: boolean = false) {
    this.selectImg = selectImg
    this.normalImg = normalImg
    this.x = x
    this.qrCode = qrCode
  }
}