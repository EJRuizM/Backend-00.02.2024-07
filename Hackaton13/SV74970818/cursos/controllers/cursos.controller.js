const CursoModel = require('../models/cursos.model');

exports.insert = (req, res) => {
    console.log(req.body)
    CursoModel.createCurso(req.body)
        .then((result) => {
            res.status(201).send({id: result._id});
        });
};

exports.list = (req, res) => {
    let limit = req.query.limit && req.query.limit <= 100 ? parseInt(req.query.limit) : 10;
    let page = 0;
    if (req.query) {
        if (req.query.page) {
            req.query.page = parseInt(req.query.page);
            page = Number.isInteger(req.query.page) ? req.query.page : 0;
        }
    }
    CursoModel.list(limit, page)
        .then((result) => {
            res.status(200).send(result);
        })
};

exports.getById = (req, res) => {
    CursoModel.findById(req.params.cursoId)
        .then((result) => {
            res.status(200).send(result);
        });
};
exports.patchById = (req, res) => {
    CursoModel.patchCurso(req.params.cursoId, req.body)
        .then((result) => {
            res.status(204).send({result});
        });

};

exports.removeById = (req, res) => {
    CursoModel.removeById(req.params.cursoId)
        .then((result)=>{
            res.status(204).send({});
        });
};