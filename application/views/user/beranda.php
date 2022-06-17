<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <H1 class="h3 mb-4 text-gray-800"><?= $title; ?></H1>
	<?php $i = 1; ?>
		<?php foreach ($berita as $b) : ?>
	<div class="card mb-3 col-lg-8">
        <div class="row no-gutters">
			<div class="col-md-4">
                <img src="<?= base_url('assets/img/berita/') . $b['gambar']; ?>" class="card-img">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title"><?= $b['judul']; ?></h5>
                    <p class="card-text"><?= $b['isi']; ?></p>
					
                    <p class="card-text"><small class="text-muted">Tanggal Kegiatan : <?= $b['tgl_mulai']; ?> Sampai <?= $b['tgl_selesai']; ?></small></p>
                </div>
            </div>
        </div>
    </div>
	<?php $i++; ?>   
	<?php endforeach; ?>
			             