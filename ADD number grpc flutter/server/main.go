package main
import(
	"context"
	"goprojects/proto"
	"net"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)
type server struct{}

func main() {
	listener, err:=net.Listen("tcp", ":4040")
	if err != nil{
		panic(err)
	}
	println("Starting server at port :4040 using tcp")
	
	srv :=grpc.NewServer()
	proto.RegisterAddServiceServer(srv,&server{})
	reflection.Register(srv)
	if e:= srv.Serve(listener);err != nil{
		panic(e)
	}
}
func (s *server) Add (ctx context.Context, request *proto.Request)(*proto.Response, error){
	a, b :=request.GetA(), request.GetB()
	println("client requests to add", a, b)
	result := a + b
	return &proto.Response{Result: result},nil
}