# 使用 Python 3.8 作为基础镜像
FROM python:3.8

# 将当前目录下的文件复制到容器的 /app 目录中
COPY . /app

# 设置工作目录为 /app
WORKDIR /app

# 安装依赖包
RUN pip install -r requirements.txt

# 暴露容器的端口
EXPOSE 8671

# 运行应用
CMD ["python", "main.py"]