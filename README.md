## Scope of use
This script could be used on Linux/MacOS, but not on Windows.
Just Support FullNode and SolidityNode.

## Download and run script

```shell
TODO
```

## Parameter Illustration

```shell
bash deploy_tron.sh --app [FullNode|SolidityNode] --net [mainnet|testnet|privatenet] --db [keep|remove|backup] --heap-size <heapsize>

--app	Optional, Running application. The default node is Fullnode and it could be FullNode or SolidityNode.
--net	Optional, Connecting network. The default network is mainnet and it could be mainnet, testnet.
--db	Optional, The way of data processing could be keep, remove and backup. Default is keep. If you launch two different networks, like from mainnet to testnet or from testnet to mainnet, you need to delete database.
--trust-node	Optional, It only works when deploying SolidityNode. Default is 127.0.0.1:50051. The specified gRPC service of Fullnode, like 127.0.0.1:50051 or 13.125.249.129:50051.
--rpc-port	Optional, Port of grpc. Default is 50051. If you deploy SolidityNode and FullNode on the same host，you need to configure different ports.
--commit	Optional, commitid of project.
--branch	Optional, branch of project.  Mainnet default is latest release and Testnet default is master.
--heap-size  Optional, jvm option: Xmx. The default heap-size is 0.8 * memory size.
--work_space  Optional, default is current directory.
```

## Examples

### Deployment of FullNode on the one host.

```shell
TODO
bash deploy_tron.sh
```
