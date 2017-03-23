package main

import (
	"net/http"
	"html/template"
)

func main() {
	//http.Handle("/", new(MyHandler))

	//Reading data from file server
	//http.ListenAndServe(":8000", http.FileServer(http.Dir("public")))
	http.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		w.Header().Add("Content Type", "text/html")
		tmpl, err := template.New("test").Parse(doc)

		if err == nil{
			context := Context{"the message"}
			tmpl.Execute(w, context)
		}
	})
	http.ListenAndServe(":8000", nil)
}

const doc = `
<!DOCTYPE html>
<html>
	<head><title>Go</title></head>
	<body>
		<h1>Hi {{.Message}}</h1>
	</body>
</html>
`

type Context struct {
	Message string
}

// Handeling request menually
/*
type MyHandler struct {
	http.Handler
}

func (this *MyHandler) ServeHTTP(w http.ResponseWriter, req *http.Request) {
	path := "public" + req.URL.Path
	data, err := ioutil.ReadFile(string(path))

	if err == nil {
		w.Write(data)
	} else {
		w.WriteHeader(404)
		w.Write([]byte("404 - " + http.StatusText(404)))
	}

}
*/

