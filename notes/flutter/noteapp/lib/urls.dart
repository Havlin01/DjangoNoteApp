Uri retrieveUrl = Uri.parse('http://localhost:8000/notes/');
deleteUrl(int id) => Uri.parse('http://localhost:8000/notes/$id/delete/');
Uri createUrl = Uri.parse('http://localhost:8000/notes/create/');
updateUrl(int id) => Uri.parse('http://localhost:8000/notes/$id/update/');

