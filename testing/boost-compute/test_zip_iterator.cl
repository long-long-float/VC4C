#define boost_pair_type(t1, t2) _pair_ ## t1 ## _ ## t2 ## _t
#define boost_pair_get(x, n) (n == 0 ? x.first ## x.second)
#define boost_make_pair(t1, x, t2, y) (boost_pair_type(t1, t2)) { x, y }
#define boost_tuple_get(x, n) (x.v ## n)
typedef struct {
    char v0;
    int v1;
    float v2;
} boost_tuple_char_int_float_t;


__kernel void copy(__global boost_tuple_char_int_float_t* _buf0, __global char* _buf1, __global int* _buf2, __global float* _buf3, const uint count)
{
uint index = get_local_id(0) + (32 * get_group_id(0));
for(uint i = 0; i < 4; i++){
    if(index < count){
_buf0[index]=(boost_tuple_char_int_float_t){ _buf1[index], _buf2[index], _buf3[index]};
       index += 8;
    }
}

}

