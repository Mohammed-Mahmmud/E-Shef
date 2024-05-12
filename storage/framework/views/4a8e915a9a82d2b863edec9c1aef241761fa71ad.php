  <style>
  .inputRound{
    border:solid 1px #ccc;
      border-radius: 10px;
  }
  </style>
  <div class="contactsz-form-wrap ms-xl-4 mt-40 mt-lg-0">
      <div class="title-area">
          <span class="sub-title">TALK TO US</span>
          <h6 class="sec-title">Do you have any question?</h6>
      </div>
      <form action="<?php echo e(route('websiteContacts')); ?>" method="POST" class="contacts-form">
      <?php echo csrf_field(); ?> 
          <div class="row">
              <div class="col-lg-6">
                  <div class="form-group">
                      <input type="text" class="form-control inputRound" name="firstname" id="firstname" placeholder="First Name">
                  </div>
              </div>
               <div class="col-lg-6">
                  <div class="form-group">
                      <input type="text" class="form-control inputRound" name="lastname" id="lastname" placeholder="last name">
                  </div>
              </div>
              <div class="col-lg-6">
                  <div class="form-group">
                      <input type="email" class="form-control inputRound" name="email" id="email" placeholder="Email Address">
                  </div>
              </div>
              <div class="col-lg-6">
                  <div class="form-group">
                      <input type="number" class="form-control inputRound" name="phone" id="phone" placeholder="Phone Number">
                  </div>
              </div>
              <div class="col-lg-12">
                  <div class="form-group">
                      <textarea class="form-control inputRound" name="message" id="message" cols="30" rows="10" placeholder="Your Message"></textarea>
                  </div>
              </div>
          </div>
          <div class="form-btn col-12 text-center">
              <button type="submit" class="btn w-100 style4">Submit Now</button>
          </div>
      </form>
  </div>
<?php /**PATH /home/mohamed-khater/Documents/projects/eshef/resources/views/components/website/layouts/contact-form.blade.php ENDPATH**/ ?>