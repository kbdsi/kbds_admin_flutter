// const baseUrl = 'https://kbdsi-mtsys.herokuapp.com/';
// const baseUrl = 'http://kbdsi-mt.herokuapp.com';
// const baseUrl = 'http://ec2-3-86-115-119.compute-1.amazonaws.com:6090';
// const baseUrl = 'http://35.247.130.115:6090';
// const baseUrl = 'https://a121c629-77a8-48aa-9f23-d8a5659d1f9c.mock.pstmn.io';
// const baseUrl = 'http://34.142.197.10:6090';
const baseUrl = 'http://35.247.130.115:6090';

const serviceUrl = {
  parameter: {
    add: baseUrl + '/mt/parameter/add',
    delete: baseUrl + '/mt/parameter/delete',
    update: baseUrl + '/mt/parameter/update',
    search: baseUrl + '/mt/parameter/search',
    get: baseUrl + '/mt/parameter/get',
    getScreenCode: baseUrl + '/mt/parameter/getScreenCode',
  },
  country: {
    add: baseUrl + '/mt/country/add',
    delete: baseUrl + '/mt/country/delete',
    update: baseUrl + '/mt/country/update',
    search: baseUrl + '/mt/country/search',
    get: baseUrl + '/mt/country/get',
    getScreenCode: baseUrl + '/mt/country/getScreenCode',
  },
  province: {
    add: baseUrl + '/mt/province/add',
    delete: baseUrl + '/mt/province/delete',
    update: baseUrl + '/mt/province/update',
    search: baseUrl + '/mt/province/search',
    get: baseUrl + '/mt/province/get',
    getScreenCode: baseUrl + '/mt/province/getScreenCode',
  },
  city: {
    add: baseUrl + '/mt/city/add',
    delete: baseUrl + '/mt/city/delete',
    update: baseUrl + '/mt/city/update',
    search: baseUrl + '/mt/city/search',
    get: baseUrl + '/mt/city/get',
    getScreenCode: baseUrl + '/mt/city/getScreenCode',
  },
  district: {
    add: baseUrl + '/mt/district/add',
    delete: baseUrl + '/mt/district/delete',
    update: baseUrl + '/mt/district/update',
    search: baseUrl + '/mt/district/search',
    get: baseUrl + '/mt/district/get',
    getScreenCode: baseUrl + '/mt/district/getScreenCode',
  },
  village: {
    add: baseUrl + '/mt/village/add',
    delete: baseUrl + '/mt/village/delete',
    update: baseUrl + '/mt/village/update',
    search: baseUrl + '/mt/village/search',
    get: baseUrl + '/mt/village/get',
    getScreenCode: baseUrl + '/mt/village/getScreenCode',
  },
};

export default serviceUrl;
