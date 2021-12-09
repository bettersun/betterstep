package step

import (
	"os"
	"path/filepath"
	"strings"

	pb "github.com/bettersun/betterstep/proto"
)

// 全局变量
var (
	codeFile    []string // 统计目标文件切片
	codeFileExt []string // 统计目标文件扩展名(.+小写，多个用逗号连接)为了在WalkFunc中使用，定义成全局变量
	ignorePath  []string // 忽略目录(多个用逗号连接) 为了在WalkFunc中使用，定义成全局变量
	ignoreFile  []string // 忽略文件(多个用逗号连接) 为了在WalkFunc中使用，定义成全局变量
)

// 常量
const (
	FileTypeText    = "0"    // 输出结果文件类型：文本
	FileTypeJson    = "1"    // 输出结果文件类型：json
	DefaultFileName = "step" // 默认输出结果文件名（不含扩展名）
)

func TargetFile(option *pb.Option) []string {
	// 全局变量 初始置空
	codeFile = []string{}
	codeFileExt = []string{}
	ignorePath = []string{}
	ignoreFile = []string{}

	// 忽略目录
	ignorePath = option.IgnorePath
	// 忽略目录
	ignoreFile = option.IgnoreFileNamePart

	// 程序运行参数指定的目标目录或文件
	// 遍历目录下的文件
	for _, p := range option.RootPath {
		if strings.TrimSpace(p) != "" {
			filepath.Walk(p, filter)
		}
	}

	// 去除重复
	singleCodeFile := RemoveRepeated(codeFile)
	return singleCodeFile
}

// 过滤
func filter(path string, info os.FileInfo, err error) error {
	// 忽略目录
	if IsInSlice(ignorePath, info.Name()) {
		return filepath.SkipDir
	}

	// 文件且不在忽略文件中，添加到全局变量
	if !info.IsDir() && !IsInSlice(ignoreFile, info.Name()) {
		if len(codeFileExt) == 0 {
			codeFile = append(codeFile, path)
		} else if IsInSuffix(path, codeFileExt) {
			codeFile = append(codeFile, path)
		}
	}

	return err
}
