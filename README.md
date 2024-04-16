# MathModelingProjects
SCUT数模论文模板plus

- 修正原模板中的dkgreen颜色报错
- 修正原模板中插入代码的时候单行代码过长而无法显示
- 改变附录代码插入格式，改为lstinputlisting，直接输入文件名，保护你的键盘CV键
- 改变文献引用格式，采用gbt7714-2015格式，同时修正了开源模板中的学位论文出现[出版社不详]的问题
- 增加目录以便其他比赛使用，修正目录与ref的颜色冲突
- 修改图片目录

 

# 使用须知

- 使用longtable的时候要caption必须前后各自加一个\\\，比如

```tex
\begin{longtable}
	\\
	caption[]{}
	\\
	%主要内容
\end{longtable}
```



- 关于图片

  这里制定了figures以及code/img作为引用图片的目录，可以不用写路径直接写文件名，图片如果是matlab生成的统一采用eps，统一按照如下形式保存

  ```matlab
  legend('plot1的标签','plot2标签')
  set(gca, 'LineWidth',1.5,'Box', 'off');
  saveas(gcf,'./img/eps','epsc')
  ```

  
