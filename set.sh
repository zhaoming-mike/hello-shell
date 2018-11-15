#author:zhaoming23@gmail.com
#更多：https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html

#set -u #不存在的变量开启报错 和 "set -o nounset" 等价
set -x #输出命令本身再输出执行结果 和 "set -o xtrace" 等价
set +e #出错就停止 和 "set -o errexit" 等价
fo
set -e
set -o pipefail #用来增强 set -e 的作用（set -e 对于管道命令只判断最后一个命令的返回是否是0）
#set -eo pipefail #可以组合使用

#e.g
	#set -euxo pipefail
	#set -eux
	#set -o pipefail
#或者
	#bash -euxo pipefail script.sh
#echo $a

#foo

#写法一
#foo || exit 1 #非零返回就停止

#写法二
#foo || { echo "foo不存在"; exit 1; } #非零返回就停止

#写法三
#if ! foo ; then echo "foo不存在"; exit 1; fi

#写法四
#foo
#if [ "$?" -ne 0 ]; then echo "foo不存在"; exit 1; fi

foo

echo a && echo b	#前面的命令成功在执行后面的命令

echo hello
