package main

import (
	"context"
	"flag"
	"log"
	"net"

	"google.golang.org/grpc"
	pb "inventory"
)


// server is used to implement helloworld.GreeterServer.
type server struct {
	pb.UnimplementedHospitalServerServer
}

// SayHello implements helloworld.GreeterServer
func (s *server) PostHospital(ctx context.Context, in *pb.Hospital) (*pb.Response, error) {
	log.Printf("Received!")
	return &pb.Response{Value: "Recaievd Hospital"}, nil
}

func (s *server) PostHospitals(context.Context, *pb.Hospitals) (*pb.Response, error) {
	log.Printf("Received!")
	return &pb.Response{Value: "Receivd List of hospitals"}, nil
}


func main() {
	flag.Parse()
	lis, err := net.Listen("tcp", ":9000")
if err != nil {
log.Fatalf("failed to listen: %v", err)
}
	s := grpc.NewServer()
	pb.RegisterHospitalServerServer(s, &server{})
	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %s", err)
		;}}
		