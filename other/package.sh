
set -eo 

# Sadly this sub-module name mis-spelled "caravel"
DELIVERY_DIR=caraval_user_project_analog

cp bag-workspace/user_analog_project_wrapper.gds ${DELIVERY_DIR}/gds/ 
cp bag-workspace/verif/lvs/user_analog_project_wrapper/*.v ${DELIVERY_DIR}/verilog/rtl/
cp bag-workspace/verif/lvs/Digital/*.v ${DELIVERY_DIR}/verilog/gl/

cd ${DELIVERY_DIR}
make compress 

# Spell it right here
##tar -czvf caravel_user_project_analog.tar.gz ${DELIVERY_DIR}/


