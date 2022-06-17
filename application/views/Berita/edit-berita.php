<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>



    <div class="row">
        <div class="col-lg-6">
        <?php if (validation_errors()) : ?>
            <div class="alert alert-danger" role="alert">
                <?= validation_errors(); ?>
            </div>
            <?php endif; ?>

            <?= $this->session->flashdata('message'); ?>

            <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newBeritaModal">Add New Berita</a>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Berita</th>
                        <th scope="col">Isi Berita</th>
                        <th scope="col">Gambar</th>
                        <th scope="col">Mulai</th>
                        <th scope="col">Selesai</th>

                        
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($berita as $b) : ?>
                    <tr>
                        <th scope="row"><?= $i; ?></th>
                        <td><?= $b['judul']; ?></td>
                        <td><?= $b['isi']; ?></td>
                        <td><?= $b['gambar']; ?></td>
                        <td><?= $b['tgl_mulai']; ?></td>
                        <td><?= $b['tgl_selesai']; ?></td>


                        
                        <td>
                            <a href="<?= base_url('admin/delete_berita/') . $b['id'];?>" class="btn btn-warning mb-3">delete</a>
                        </td>

                    </tr>
                    <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>


        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Modal -->
<div class="modal fade" id="newBeritaModal" tabindex="-1" role="dialog" aria-labelledby="newBeritaModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newSubMenuModalLabel">Add New Berita</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('admin/berita'); ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control" id="judul" name="judul" placeholder="judul berita">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="isi" name="isi" placeholder="isi berita">
                    </div>
                    
                    <div class="form-group">
                        <input type="text" class="form-control" id="date_start" name="date_start" placeholder="isi Tanggal Mulai Kegiatan ">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="date_end" name="date_end" placeholder="isi Tanggal Berakhir Kegiatan ">
                    </div>
                    <div class="col-sm-9">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="gambar" name="gambar">
                                <label class="custom-file-label" for="image">Choose file</label>
                            </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div> 