
## role 结构

files: 需要上传的文件
handlers: 服务重启
tasks: 核心任务部分
templates: 模板文件,多用于需要动态改变的配置文件
meta: 保存当前roles所依赖的其他roles信息(当前roles运行前所需要的roles)
defaults: 保存当前roles默认变量

## roles 编写注意事项:

 1. 尽量可以单独使用
 2. 不能单独使用的,一定要在 meta中声明依赖关系,比如在php需要依赖apache,写法看本模板中example中的 meta 
 3. 上传的配置文件存在多版本问题 使用template模块上传 配置文件差异使用jinja模板处理
