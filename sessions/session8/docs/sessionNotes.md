[Main Menu](../../../sessions/README.md) |[session8](../../session8/) | [Session 8 Notes](../docs/sessionNotes.md)

# Session 8 Notes

Try simple kubernetes tutorial 

https://github.com/shazforiot/k8s-beginner-project


```
kubectl get svc -n k8s-demo


kubectl patch svc k8s-demo -n k8s-demo -p '{"spec":{"ports":[{"name":"http","port":80,"targetPort":"http","protocol":"TCP","nodePort":81}]}}'
```


## More complete examples

https://github.com/tomjosetj31/learn-kubernetes

