<?php echo $this->session->flashdata('upload'); ?>

<!-- Begin Page Content -->
<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800 mb-4">Vendor</h1>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-body">
			<?php echo $this->session->flashdata('failed'); ?>
			<?php if ($vendor->num_rows() > 0) { ?>
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th>#</th>
								<th>Nama</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Tanggal Daftar</th>
								<th>Aksi</th>
							</tr>
						</thead>
						<tfoot></tfoot>
						<tbody class="data-content">
							<?php $no = $this->uri->segment(3) + 1; ?>
							<?php foreach ($vendor->result_array() as $data) : ?>
								<tr>
									<td><?= $no; ?></td>
									<td><?= $data['name']; ?></td>
									<td><?= $data['email']; ?></td>
									<td><a href="https://wa.me/62<?= $data['phone']; ?>" target="_blank">0<?= $data['phone']; ?></a></td>
									<td><?= $data['date_register']; ?></td>
									<td>
										<a href="<?= base_url(); ?>administrator/order/<?= $data['invoice_code']; ?>" class="btn btn-sm btn-info"><i class="fa fa-eye"></i></a>
										<a href="<?= base_url(); ?>administrator/print_shipping/<?= $data['invoice_code']; ?>" class="btn btn-sm btn-warning" target="_blank"><i class="fa fa-dolly-flatbed"></i></a>
									</td>
								</tr>
								<?php $no++; ?>
							<?php endforeach; ?>
						</tbody>
					</table>
					<!-- <?= $this->pagination->create_links(); ?> -->
				</div>
			<?php } else { ?>
				<div class="alert alert-warning mb-0" role="alert">
					Opss, belum ada pengguna.
				</div>
			<?php } ?>
		</div>
	</div>
</div>
<!-- /.container-fluid -->