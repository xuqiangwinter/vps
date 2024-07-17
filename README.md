## 克隆仓库
```
git clone https://github.com/xuqiangwinter/vps.git
```
注意：
- 子模块不要使用 `--recursive` 递归克隆，构建 `hysteria2` 镜像时会构建失败
- 单独克隆子模块仓库
## 克隆 `acme.sh`
```
git clone https://github.com/acmesh-official/acme.sh.git acme.sh
```
## 克隆 `hysteria`
```
git clone https://github.com/apernet/hysteria.git hysteria
```
## 修改 `docker-compose.yaml`
修改 `acme.sh` 的环境变量 `CF_Token` 参数，替换为自己的即可
```
environment:
  - CF_Token="cloudflare-api" # 替换为自己的
```
## 构建镜像
```
docker compose build
```
## 创建容器
```
docker compose up -d
```